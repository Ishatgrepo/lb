#!/bin/bash
qbittorrent-nox --webui-port=8090 --daemon &
aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all=true --rpc-listen-port=6800 
source mltbenv/bin/activate
python3 update.py
python3 -m bot
