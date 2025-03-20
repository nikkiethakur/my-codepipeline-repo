#!/bin/bash
cd /home/ubuntu/my-app
nohup python3 src/app.py > app.log 2>&1 &
