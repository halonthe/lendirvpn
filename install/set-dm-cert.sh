#!/bin/bash
clear
cd
echo start
sleep 0.5
echo Input your domain/subdomain
read domain
cat domain >/root/domain <<EOF
$domain
EOF
mkdir -p /etc/xray
cat domain >/etc/xray/domain <<EOF
$domain
EOF

echo Input your email
read email
source /var/lib/crot/ipvps.conf
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget -O acme.sh https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
echo "starting...., Port 80 Akan di Hentikan Saat Proses install Cert"
bash acme.sh --register-account -m $email
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key

systemctl daemon-reload
systemctl restart xray
systemctl restart nginx
systemctl restart runn
rm -rf set-dm-cert.sh
sleep 3