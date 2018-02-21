#!/bin/bash
set -e
cd /hackroot/code
sudo killall node nodejs nohup | true
npm install
sudo nohup env IP="0.0.0.0" PORT=80 node ./index.js &>> /hackroot/server.log&