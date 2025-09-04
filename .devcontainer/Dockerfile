# CPU 기본 이미지 (권장)
ARG PYTHON_VERSION=3.11
FROM mcr.microsoft.com/devcontainers/python:1-${PYTHON_VERSION}-bookworm

# 필수/자주 쓰는 OS 패키지
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
&& apt-get install -y --no-install-recommends \
build-essential git curl wget ca-certificates \
libglib2.0-0 libsm6 libxrender1 libxext6 \
libgl1 ffmpeg \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

# pip 최신화 및 기본 과학 컴퓨팅 스택(최소 설치는 setup.sh에서 처리)
RUN pip install --upgrade pip

# (선택) 한글 폰트 – matplotlib에서 한글 표시가 필요할 경우 주석 해제
 RUN apt-get update && apt-get install -y fonts-nanum && rm -rf /var/lib/apt/lists/*

# 워크디렉터리
WORKDIR /workspaces/keras-dl-2e-code