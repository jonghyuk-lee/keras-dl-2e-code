#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
ln -sfn devcontainer.gpu.json devcontainer.json
echo "Switched to GPU devcontainer config"