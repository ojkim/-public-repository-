#!/usr/bin/env bash

# 필수 패키지 설치
apt update
apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev git

# pyenv 설치
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# .bashrc 수정
cp ~/.bashrc ~/.bashrc_backup
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init-)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init-)"' >> ~/.bashrc
source ~/.bashrc

# pyenv 버전 확인
pyenv --version

# git 클론
git clone https://github.com/mjhans/2024-2-kbu-advanced-programming.git
cd 2024-2-kbu-advanced-programming/ch01-overview

# pyenv로 Python 3.12 설치 및 가상환경 설정
pyenv install 3.12
pyenv virtualenv 3.12 python-class
pyenv activate python-class
