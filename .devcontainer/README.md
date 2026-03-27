# Keras DL 2e 실습용 Dev Container 안내

이 폴더의 설정은 저장소 루트에 있는 주피터 노트북(`chapter02_...ipynb`, `chapter03_...ipynb` 등)을  
**VS Code Dev Container 환경에서 바로 실행**할 수 있도록 구성한 것입니다.

현재 저장소 루트에는 장별 실습 노트북이 들어 있으며, `.devcontainer` 폴더는 이 노트북들을 같은 워크스페이스 안에서 실행하도록 설정되어 있습니다.

---

## 1. 준비물

아래 프로그램이 미리 설치되어 있어야 합니다.

- **Git**
- **Docker Desktop**
- **Visual Studio Code**
- VS Code 확장:
  - **Dev Containers**
  - **Python**
  - **Jupyter**

> Docker Desktop은 반드시 실행 중이어야 합니다.

---

## 2. 저장소 받기

터미널에서 아래 명령을 실행합니다.

```bash
git clone https://github.com/jonghyuk-lee/keras-dl-2e-code.git
cd keras-dl-2e-code
code .
```

## 3. Dev Container로 열기

먼저 사용할 환경을 선택합니다.

- CPU 환경
  ```bash
  bash .devcontainer/use-cpu.sh
  ```
- GPU 환경
  ```bash
  bash .devcontainer/use-gpu.sh
  ```
위 스크립트는 .devcontainer/devcontainer.json 심볼릭 링크를 CPU용 또는 GPU용 설정 파일로 바꿉니다.

그 다음 VS Code에서 저장소를 연 뒤 다음 중 하나를 선택합니다.
- 오른쪽 아래에 표시되는 "Reopen in Container" 클릭
- 또는 Ctrl+Shift+P → Dev Containers: Reopen in Container

이미 Dev Container가 한 번 만들어진 상태에서 CPU/GPU 환경을 바꾼 경우에는 링크만 바꿔서는 반영되지 않으므로, 아래 명령을 사용해 컨테이너를 다시 열어야 합니다.

- Ctrl+Shift+P → Dev Containers: Rebuild and Reopen in Container

처음 실행할 때는 Docker 이미지 빌드와 Python 패키지 설치 때문에 시간이 조금 걸릴 수 있습니다.
정상적으로 완료되면 VS Code가 컨테이너 내부 환경으로 다시 열립니다.