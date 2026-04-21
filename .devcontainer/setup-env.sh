#!/usr/bin/env bash

export ANDROID_SDK_ROOT="${ANDROID_SDK_ROOT:-/opt/android-sdk}"
export ANDROID_HOME="${ANDROID_HOME:-$ANDROID_SDK_ROOT}"
export PUB_CACHE="${PUB_CACHE:-$HOME/.pub-cache}"

if [ -z "${JAVA_HOME:-}" ] && command -v javac >/dev/null 2>&1; then
  export JAVA_HOME
  JAVA_HOME="$(dirname "$(dirname "$(readlink -f "$(command -v javac)")")")"
fi

add_to_path() {
  case ":${PATH}:" in
    *":$1:"*) ;;
    *) export PATH="$1:${PATH}" ;;
  esac
}

add_to_path "$PUB_CACHE/bin"
add_to_path "$ANDROID_SDK_ROOT/platform-tools"
add_to_path "$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"
add_to_path "$HOME/.fvm/default/bin"
