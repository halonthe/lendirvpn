#!/bin/bash
clear
echo start
sleep 0.5
source /var/lib/crot/ipvps.conf
domain=$(cat /etc/xray/domain)
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget -O acme.sh https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
echo "starting...., Port 80 Akan di Hentikan Saat Proses install Cert"
bash acme.sh --register-account -m halonthe@gmail.com
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key
read -n 1 -s -r -p "Press any key to back on menu"
menu