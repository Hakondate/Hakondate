#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

source .devcontainer/setup-env.sh

chmod +x \
  .devcontainer/flutter-run-host-adb.sh \
  .devcontainer/flutter-tool.sh \
  .devcontainer/vmservice-proxy.sh

cleanup_container_generated_files() {
  # Generated artifacts can capture host-only absolute paths such as /Users/...
  # Remove them when entering the container so Flutter/Gradle regenerate safely.
  rm -rf \
    .dart_tool/flutter_build \
    build \
    android/.gradle \
    .flutter-plugins \
    .flutter-plugins-dependencies

  rm -rf \
    "${FLUTTER_BUILD_DIR:-/home/vscode/.cache/hakondate/flutter-build}"
}

repair_android_sdk_package() {
  local package_name="$1"
  local package_dir="$2"
  local package_xml="$package_dir/package.xml"

  if [ ! -s "$package_xml" ]; then
    echo "Repairing Android SDK package: $package_name" >&2
    rm -rf "$package_dir"
    yes | sdkmanager --sdk_root="$ANDROID_SDK_ROOT" "$package_name" >/dev/null
  fi
}

repair_android_sdk_package "platforms;android-31" "$ANDROID_SDK_ROOT/platforms/android-31"
repair_android_sdk_package "platforms;android-34" "$ANDROID_SDK_ROOT/platforms/android-34"
repair_android_sdk_package "platforms;android-35" "$ANDROID_SDK_ROOT/platforms/android-35"

for required_path in \
  "$ANDROID_SDK_ROOT/platform-tools/adb" \
  "$ANDROID_SDK_ROOT/platforms/android-31" \
  "$ANDROID_SDK_ROOT/platforms/android-34" \
  "$ANDROID_SDK_ROOT/platforms/android-35" \
  "$ANDROID_SDK_ROOT/build-tools/34.0.0" \
  "$ANDROID_SDK_ROOT/build-tools/35.0.0"
do
  if [ ! -e "$required_path" ]; then
    echo "Missing required Android SDK component: $required_path" >&2
    echo "Rebuild the DevContainer image so the Dockerfile can install Android SDK packages." >&2
    exit 1
  fi
done

cleanup_container_generated_files
mkdir -p \
  "${FLUTTER_BUILD_DIR:-/home/vscode/.cache/hakondate/flutter-build}"

dart --disable-analytics >/dev/null 2>&1 || true
dart pub global activate fvm
export PATH="$HOME/.pub-cache/bin:$PATH"

fvm install
fvm use --force
fvm flutter config --no-analytics
fvm flutter config --android-sdk "$ANDROID_SDK_ROOT"

flutter_sdk_path="$(pwd)/.fvm/flutter_sdk"
cat > android/local.properties <<EOF
sdk.dir=$ANDROID_SDK_ROOT
flutter.sdk=$flutter_sdk_path
EOF

fvm flutter pub get
fvm flutter doctor -v
