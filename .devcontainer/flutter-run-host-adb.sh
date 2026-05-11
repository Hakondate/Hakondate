#!/usr/bin/env bash
set -euo pipefail

exec .devcontainer/flutter-tool.sh run "$@"
