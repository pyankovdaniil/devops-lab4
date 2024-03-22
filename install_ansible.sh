#!/bin/bash

which pip3
if [[ $? -eq 1 ]]; then
    echo "Could't find pip3. apt install -y python3-pip"
    exit 1
fi

export PATH="${PATH}:~/.local/bin/"
echo 'export PATH="${PATH}:~/.local/bin/"' >> ~/.bashrc

python3 -m pip install --user ansible ansible-core
ansible --version
python3 -m pip install --user argcomplete
activate-global-python-argcomplete --user
