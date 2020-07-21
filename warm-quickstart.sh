#!/bin/bash

git clone https://github.com/w-a-r-m-inventory-system/Food-Pantry-Inventory.git

sudo apt install python3-venv

python3 -m venv venv

source venv/bin/activate

echo "The pip wheel may fail but that is ok - it will still install everything"

sudo apt install build-essential python3-dev

pip3 install -r requirements.txt

mkdir ./FPIDjango/private

cp ./FPIDjango/settings_private.py ./FPIDjango/private/settings_private.py

