#!/usr/bin/env bash
set -euo pipefail

echo "[setup] pip / setuptools / wheel 업그레이드"
python -m pip install --upgrade pip setuptools wheel

if [ -f "requirements.txt" ]; then
    echo "[setup] requirements.txt 감지 -> 의존성 설치"
    pip install -r requirements.txt
else
    echo "[setup] requirements.txt 없음 -> 공통 실습 패키지 설치"
    pip install \
        jupyterlab notebook ipykernel \
        numpy pandas matplotlib seaborn scikit-learn \
        pillow requests tqdm \
        tensorflow[and-cuda]==2.17.* \
        "keras==3.*"
fi

echo "[setup] Jupyter 커널 등록"
python -m ipykernel install --user \
    --name=devcontainer-keras-dl-2e-code \
    --display-name="Python (devcontainer-keras-dl-2e-code)"

echo "[setup] Jupyter 설정 파일 작성"
mkdir -p ~/.jupyter
cat > ~/.jupyter/jupyter_notebook_config.py <<'EOF'
c.NotebookApp.token = ''
c.NotebookApp.password = ''
EOF

echo "[setup] 완료"