#!/bin/bash
echo " Restarting Xray services, please wait...."
systemctl daemon-reload
systemctl enable xray
systemctl restart xray
systemctl restart nginx
systemctl enable runn
systemctl restart runn
echo " Xray & Nginx restarted successfully"
read -n 1 -s -r -p "Press any key to back on menu"
menu