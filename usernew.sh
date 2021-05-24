#!/bin/bash
reset
echo -e "\e[1;33m===============================================================";
echo -e "\e[1;36m                    AutoScriptVPS by  Badboy                   ";
echo -e "\e[1;36m                           Redfox VPN                          ";
echo -e "\e[1;33m===============================================================";
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(wget -qO- icanhazip.com);
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "\e[1;33m==============================================================="
echo -e "\e[1;36m                    AutoScriptVPS by  Badboy                   "
echo -e "\e[1;36m                           Redfox VPN                          "
echo -e "\e[1;33m==============================================================="
echo -e "Informasi Akun SSH & OpenVPN"
echo -e "\e[1;32mUsername       :\e[1;34m $Login "
echo -e "\e[1;32mPassword       :\e[1;34m $Pass"
echo -e "\e[1;32mAktif Sampai   :\e[1;34m $exp"
echo -e "\e[1;33m==============================="
echo -e "\e[1;32mIP Server      :\e[1;34m $IP"
echo -e "\e[1;32mHost           :\e[1;34m $domain"
echo -e "\e[1;32mOpenSSH        :\e[1;34m 22"
echo -e "\e[1;32mDropbear       :\e[1;34m 143, 109"
echo -e "\e[1;32mSSL/TLS        :\e[1;34m 443"
echo -e "\e[1;32mPort Squid     :\e[1;34m 3128, 8080 (limit to IP SSH)" 
echo -e "\e[1;32mOpenVPN        :\e[1;34m TCP 1194 http://$IP:81/client-tcp-1194.ovpn"
echo -e "\e[1;32mOpenVPN        :\e[1;34m UDP 2200 http://$IP:81/client-udp-2200.ovpn"
echo -e "\e[1;32mOpenVPN        :\e[1;34m SSL 992 http://$IP:81/client-tcp-ssl.ovpn"
echo -e "\e[1;32mbadvpn         :\e[1;34m 7100, 7200, 7300"
echo -e "\e[1;33m==============================="
