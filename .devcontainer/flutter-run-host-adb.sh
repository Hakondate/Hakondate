#!/usr/bin/env bash
set -euo pipefail

exec .vscode/flutter-tool.sh run "$@"
