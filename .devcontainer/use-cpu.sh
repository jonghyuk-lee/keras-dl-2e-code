#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
ln -sfn devcontainer.cpu.json devcontainer.json
echo "Switched to CPU devcontainer config"