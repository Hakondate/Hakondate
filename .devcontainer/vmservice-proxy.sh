#!/usr/bin/env bash
set -euo pipefail

if [ -f /usr/local/share/hakondate-devcontainer/setup-env.sh ]; then
  source /usr/local/share/hakondate-devcontainer/setup-env.sh
elif [ -f .devcontainer/setup-env.sh ]; then
  source .devcontainer/setup-env.sh
fi

vmservice_port="${FLUTTER_HOST_VMSERVICE_PORT:-50000}"
host="${ADB_HOST_GATEWAY:-host.docker.internal}"
pid_file="/tmp/hakondate-vmservice-proxy-${vmservice_port}.pid"
log_file="/tmp/hakondate-vmservice-proxy-${vmservice_port}.log"

echo "Starting VM Service proxy on 127.0.0.1:${vmservice_port} -> ${host}:${vmservice_port}"

if ! command -v socat >/dev/null 2>&1; then
  echo "socat is required. Rebuild the DevContainer so the Dockerfile installs it." >&2
  exit 1
fi

if [ -f "$pid_file" ]; then
  old_pid="$(cat "$pid_file" 2>/dev/null || true)"
  if [ -n "$old_pid" ] && kill -0 "$old_pid" >/dev/null 2>&1; then
    echo "VM Service proxy ready"
    wait "$old_pid"
    exit 0
  fi
  rm -f "$pid_file"
fi

socat "TCP-LISTEN:${vmservice_port},bind=127.0.0.1,reuseaddr,fork" "TCP:${host}:${vmservice_port}" >"$log_file" 2>&1 &
proxy_pid="$!"
echo "$proxy_pid" > "$pid_file"

cleanup() {
  if kill -0 "$proxy_pid" >/dev/null 2>&1; then
    kill "$proxy_pid" >/dev/null 2>&1 || true
    wait "$proxy_pid" 2>/dev/null || true
  fi
  rm -f "$pid_file"
}
trap cleanup EXIT INT TERM

echo "VM Service proxy ready"
wait "$proxy_pid"
