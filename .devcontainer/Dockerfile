FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV ANDROID_HOME=/opt/android-sdk
ENV DART_SDK=/usr/lib/dart-sdk
ENV PUB_CACHE=/home/vscode/.pub-cache
ENV PATH=/usr/lib/dart-sdk/bin:/home/vscode/.pub-cache/bin:/opt/android-sdk/cmdline-tools/latest/bin:/opt/android-sdk/platform-tools:${PATH}

ARG DART_SDK_VERSION=3.6.1
ARG ANDROID_CMDLINE_TOOLS_VERSION=11076708

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        clang \
        cmake \
        curl \
        git \
        libglu1-mesa \
        libgtk-3-dev \
        liblzma-dev \
        ninja-build \
        openjdk-17-jdk \
        pkg-config \
        socat \
        unzip \
        xz-utils \
        zip \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL "https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_SDK_VERSION}/sdk/dartsdk-linux-x64-release.zip" -o /tmp/dartsdk.zip \
    && unzip -q /tmp/dartsdk.zip -d /usr/lib \
    && rm /tmp/dartsdk.zip \
    && ln -sf /usr/lib/dart-sdk/bin/dart /usr/local/bin/dart \
    && ln -sf /usr/lib/dart-sdk/bin/pub /usr/local/bin/pub

RUN mkdir -p /opt/android-sdk/cmdline-tools \
    && curl -fsSL "https://dl.google.com/android/repository/commandlinetools-linux-${ANDROID_CMDLINE_TOOLS_VERSION}_latest.zip" -o /tmp/android-cmdline-tools.zip \
    && unzip -q /tmp/android-cmdline-tools.zip -d /opt/android-sdk/cmdline-tools \
    && mv /opt/android-sdk/cmdline-tools/cmdline-tools /opt/android-sdk/cmdline-tools/latest \
    && rm /tmp/android-cmdline-tools.zip

RUN yes | sdkmanager --licenses >/dev/null \
    && sdkmanager \
        "platform-tools" \
        "platforms;android-31" \
        "platforms;android-34" \
        "platforms;android-35" \
        "build-tools;34.0.0" \
        "build-tools;35.0.0" \
    && chown -R vscode:vscode /opt/android-sdk /home/vscode

COPY .devcontainer/setup-env.sh /usr/local/share/hakondate-devcontainer/setup-env.sh
RUN chmod 0755 /usr/local/share/hakondate-devcontainer/setup-env.sh \
    && ln -sf /usr/local/share/hakondate-devcontainer/setup-env.sh /etc/profile.d/hakondate-devcontainer.sh \
    && printf '\nsource /usr/local/share/hakondate-devcontainer/setup-env.sh\n' >> /home/vscode/.bashrc \
    && printf '\nsource /usr/local/share/hakondate-devcontainer/setup-env.sh\n' >> /home/vscode/.profile \
    && chown vscode:vscode /home/vscode/.bashrc /home/vscode/.profile
