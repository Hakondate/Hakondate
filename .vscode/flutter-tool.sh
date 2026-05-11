#!/usr/bin/env bash
set -euo pipefail

if [ -f /usr/local/share/hakondate-devcontainer/setup-env.sh ]; then
  source /usr/local/share/hakondate-devcontainer/setup-env.sh
elif [ -f .devcontainer/setup-env.sh ]; then
  source .devcontainer/setup-env.sh
fi

vmservice_port="${FLUTTER_HOST_VMSERVICE_PORT:-50000}"
dds_port="${FLUTTER_DDS_PORT:-50001}"
host="${ADB_HOST_GATEWAY:-host.docker.internal}"
proxy_pid=""
flutter_pid=""
output_dir=""
args=("$@")

cleanup() {
  if [ -n "$flutter_pid" ]; then
    kill "$flutter_pid" >/dev/null 2>&1 || true
    wait "$flutter_pid" 2>/dev/null || true
  fi
  if [ -n "$proxy_pid" ]; then
    kill "$proxy_pid" >/dev/null 2>&1 || true
    wait "$proxy_pid" 2>/dev/null || true
  fi
  if [ -n "$output_dir" ]; then
    rm -rf "$output_dir"
  fi
}
trap cleanup EXIT INT TERM

flutter_cmd=()
if [ -x ".fvm/flutter_sdk/bin/flutter" ]; then
  flutter_cmd=(".fvm/flutter_sdk/bin/flutter")
elif command -v fvm >/dev/null 2>&1; then
  flutter_cmd=("fvm" "flutter")
else
  flutter_cmd=("flutter")
fi

if [ "${args[0]:-}" = "flutter" ]; then
  args=("${args[@]:1}")
fi

if [ "${ADB_SERVER_SOCKET:-}" != "tcp:host.docker.internal:5037" ] || [ "${args[0]:-}" != "run" ]; then
  exec "${flutter_cmd[@]}" "${args[@]}"
fi

if ! command -v socat >/dev/null 2>&1; then
  echo "socat is required. Rebuild the DevContainer so the Dockerfile installs it." >&2
  exit 1
fi

start_proxy() {
  if [ -n "$proxy_pid" ] && kill -0 "$proxy_pid" >/dev/null 2>&1; then
    return
  fi

  socat "TCP-LISTEN:${vmservice_port},bind=127.0.0.1,reuseaddr,fork" "TCP:${host}:${vmservice_port}" &
  proxy_pid="$!"
}

has_vmservice_port=0
has_dds_port=0
arg_index=0
while [ "$arg_index" -lt "${#args[@]}" ]; do
  arg="${args[$arg_index]}"
  case "$arg" in
    --host-vmservice-port=*)
      has_vmservice_port=1
      vmservice_port="${arg#*=}"
      ;;
    --host-vmservice-port)
      has_vmservice_port=1
      next_index=$((arg_index + 1))
      if [ "$next_index" -lt "${#args[@]}" ]; then
        vmservice_port="${args[$next_index]}"
      fi
      ;;
    --dds-port=*)
      has_dds_port=1
      dds_port="${arg#*=}"
      ;;
    --dds-port)
      has_dds_port=1
      next_index=$((arg_index + 1))
      if [ "$next_index" -lt "${#args[@]}" ]; then
        dds_port="${args[$next_index]}"
      fi
      ;;
  esac
  arg_index=$((arg_index + 1))
done

if [ "$has_vmservice_port" -eq 0 ]; then
  args=("${args[0]}" "--host-vmservice-port=$vmservice_port" "${args[@]:1}")
fi

if [ "$has_dds_port" -eq 0 ]; then
  args=("${args[0]}" "--dds-port=$dds_port" "${args[@]:1}")
fi

adb forward --remove "tcp:${vmservice_port}" >/dev/null 2>&1 || true

output_dir="$(mktemp -d)"
output_fifo="${output_dir}/flutter-output"
mkfifo "$output_fifo"

if [ -r /dev/tty ]; then
  stdbuf -oL -eL "${flutter_cmd[@]}" "${args[@]}" </dev/tty >"$output_fifo" 2>&1 &
else
  stdbuf -oL -eL "${flutter_cmd[@]}" "${args[@]}" >"$output_fifo" 2>&1 &
fi
flutter_pid="$!"

while IFS= read -r line; do
  printf '%s\n' "$line"
  case "$line" in
    *"Forwarded host port ${vmservice_port} to device port"*|*"Connecting to the VM Service"*|*"Connecting to service protocol"*)
      start_proxy
      ;;
  esac
done < "$output_fifo"

set +e
wait "$flutter_pid"
flutter_status="$?"
set -e
flutter_pid=""

exit "$flutter_status"
