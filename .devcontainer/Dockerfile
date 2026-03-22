# CPU 기본 이미지
ARG PYTHON_VERSION=3.11
FROM mcr.microsoft.com/devcontainers/python:1-${PYTHON_VERSION}-bookworm

# 필수/자주 쓰는 OS 패키지
RUN rm -f /etc/apt/sources.list.d/yarn.list \
    && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        build-essential git curl wget ca-certificates \
        libglib2.0-0 libsm6 libxrender1 libxext6 \
        libgl1 ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# pip 최신화
RUN pip install --upgrade pip

# 한글 폰트 – matplotlib에서 한글 표시가 필요할 경우
RUN apt-get update \
    && apt-get install -y fonts-nanum \
    && rm -rf /var/lib/apt/lists/*

# 워크디렉터리
WORKDIR /workspaces/keras-dl-2e-code