#!/bin/bash

# Check if python3.10 is installed
if command -v python3.10 &>/dev/null; then
    echo "Python 3.10 is installed."
else
    echo "Python 3.10 is not installed."
    exit 1
fi

# Check if virtualenv is installed
if command -v virtualenv &>/dev/null; then
    echo "virtualenv is installed."
else
    echo "virtualenv is not installed."
    exit 1
fi

python3.10 -m virtualenv venv
cd neteng_ansible
source venv/bin/activate
pip install -r requirements.txt
ansible-galaxy collection install networktocode.nautobot:4.3.1 --force