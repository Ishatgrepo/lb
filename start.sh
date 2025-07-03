#!/bin/bash
aria2c --enable-rpc --rpc-listen-all=true --rpc-allow-origin-all=true --rpc-listen-port=6800 >> /usr/src/app/aria2c.log 2>&1 &
source mltbenv/bin/activate
python3 update.py
python3 -m bot
