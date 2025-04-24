#! /usr/bin/env bash
 sudo apt update 
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl libncurses5-dev libncursesw5-dev xz
utils tk-dev libffi-dev liblzma-dev git 
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

#! /usr/bin/env bash
 cp ~/.bashrc ~/.bashrc_backup
 echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
 echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
 echo 'eval "$(pyenv init-)"' >> ~/.bashrc
 echo 'eval "$(pyenv virtualenv-init-)"' >> ~/.bashrc
 source ~/.bashrc
 pyenv--version

git clone https://github.com/mjhans/2024-2-kbu-advanced-programming.git
 cd 2024-2-kbu-advanced-programming/ch01-overview
 bash +x install_pyenv_on_debian.sh

#! /usr/bin/env bash
 pyenv install 3.12 
pyenv virtualenv 3.12 python-class 
pyenv activate python-class
