#!/bin/bash

set -e

git clone https://github.com/PluralisResearch/node0
cd node0

conda create -n node0 python=3.11 -y
source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate node0

python -m pip install .

read -p "Enter announce port: " ANNOUNCE_PORT
read -p "Enter HF TOKEN: " HF_TOKEN
read -p "Enter email address: " EMAIL_ADDRESS

python3 generate_script.py --host_port 49200 --announce_port "$ANNOUNCE_PORT" --token "$HF_TOKEN" --email "$EMAIL_ADDRESS"

./start_server.sh

