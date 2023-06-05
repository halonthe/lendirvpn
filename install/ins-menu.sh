#!/bin/bash
# Color==========================================
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# Getting==========================================
MYIP=$(wget -qO- ipinfo.io/ip);
conf_link="raw.githubusercontent.com/halonthe/lendirvpn/main/config"
install_link="raw.githubusercontent.com/halonthe/lendirvpn/main/install"
menu_link="raw.githubusercontent.com/halonthe/lendirvpn/main/menu"
# ==================================================
cd
rm -r ins-menu
wget -O ins-menu "https://${install_link}/ins-menu.sh"
rm -rf ins-menu

# hapus
cd /usr/bin
rm -rf menu
rm -rf ins-menu
rm -r ins-menu
# download
cd /usr/bin
wget -O menu "https://${menu_link}/menu.sh"
wget -O add-akun "https://${menu_link}/add-akun.sh"
wget -O ins-menu "https://${install_link}/ins-menu.sh"
wget -O add-akun "https://${menu_link}/add-akun.sh"
wget -O delete-akun "https://${menu_link}/delete-akun.sh"
wget -O certv2ray "https://${menu_link}/certv2ray.sh"
wget -O restart-xray "https://${menu_link}/restart-xray.sh"
wget -O menu "https://${menu_link}/menu.sh"
wget -O auto-pointing "https://${menu_link}/auto-pointing.sh"
wget -O cek-port "https://${menu_link}/cek-port.sh"
wget -O menu "https://${menu_link}/menu.sh"
# chmod
chmod +x /usr/bin/ins-menu
chmod +x /usr/bin/menu
chmod +x menu
chmod +x add-akun
chmod +x delete-akun
chmod +x ins-menu
chmod +x add-akun
chmod +x certv2ray
chmod +x restart-xray
chmod +x auto-pointing
chmod +x cek-port

cd