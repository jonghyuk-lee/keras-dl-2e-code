#!/usr/bin/env bash
set -euo pipefail

# pip 기본 업그레이드
python -m pip install --upgrade pip wheel setuptools

# 저장소 루트의 requirements.txt가 있으면 우선 설치
if [ -f "requirements.txt" ]; then
  echo "[setup] requirements.txt 감지 → 의존성 설치"
  pip install -r requirements.txt
else
  echo "[setup] requirements.txt 없음 → 도서 실습 공통 패키지 최소 설치"
  pip install \
    jupyter notebook ipykernel \
    numpy pandas matplotlib seaborn scikit-learn \
    pillow requests tqdm \
    tensorflow==2.17.* keras==3.*
fi

# 주피터 커널 등록
python -m ipykernel install --user --name=devcontainer-keras-dl-2e-code --display-name "Python (devcontainer-keras-dl-2e-code)"

# 편의: Jupyter 토큰 없이 로컬에서만 접근 허용 (원하면 주석 처리)
mkdir -p ~/.jupyter
cat > ~/.jupyter/jupyter_notebook_config.py <<'EOF'
c.NotebookApp.token = ''
c.NotebookApp.password = ''
EOF

echo "[setup] 완료"