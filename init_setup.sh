#!/bin/bash

echo [$(date)]: "START"

echo [$(date)]: "creating virtual environment with python 3.8 version"

python3.8 -m venv env || { echo "Python 3.8 not found. Please install it."; exit 1; }

echo [$(date)]: "activating the environment"

source env/bin/activate || { echo "Failed to activate the virtual environment."; exit 1; }

echo [$(date)]: "installing the dev requirements"

pip install --upgrade pip  # Upgrade pip to the latest version
pip install -r requirements_dev.txt || { echo "Failed to install requirements. Check the file."; exit 1; }

echo [$(date)]: "END"
