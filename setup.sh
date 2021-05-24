red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS....."
IZIN=$( curl https://raw.githubusercontent.com/lanundarat87/new/main/ipvps.txt | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo "${red}Permission Denied!${NC}";
echo -e "Only For Premium Users"
rm -f setup.sh
exit 0
fi
mkdir /var/lib/premium-script;
clear
echo -e "\e[1;32mEnter the VPS Subdomain Hostname, if not available, please click Enter"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/premium-script/ipvps.conf
wget https://raw.githubusercontent.com/lanundarat87/new/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/lanundarat87/new/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
wget https://raw.githubusercontent.com/lanundarat87/new/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
wget https://raw.githubusercontent.com/lanundarat87/new/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/lanundarat87/new/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
wget https://raw.githubusercontent.com/lanundarat87/new/main/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh
wget https://raw.githubusercontent.com/lanundarat87/new/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/sodosok.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/go.sh
rm -f /root/ipsec.sh
history -c
echo "1.1" > /home/ver
clear
echo -e " "
echo -e "\e[1;32mInstallation has been completed!!"
echo -e "\e[1;32mInstallation has been completed!!"
echo -e " "
echo -e "\e[1;33m\e[1;33m\e[1;33m=================================\e[1;36m\e[1;32m-Autoscript Premium-\e[1;33m\e[1;33m===========================" | tee -a log-install.txt
echo -e "" | tee -a log-install.txt
echo -e "\e[1;36m   >>> Service & Port"  | tee -a log-install.txt
echo -e "\e[1;32m  - OpenSSH                 :\e[1;34m\e[1;34m 22"  | tee -a log-install.txt
echo -e "\e[1;32m  - OpenVPN                 :\e[1;34m TCP 1194, UDP 2200, SSL 992"  | tee -a log-install.txt
echo -e "\e[1;32m  - Stunnel4                :\e[1;34m 443"  | tee -a log-install.txt
echo -e "\e[1;32m  - Dropbear                :\e[1;34m 143, 109"  | tee -a log-install.txt
echo -e "\e[1;32m  - Squid Proxy             :\e[1;34m 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo -e "\e[1;32m  - Badvpn                  :\e[1;34m 7100, 7200, 7300"  | tee -a log-install.txt
echo -e "\e[1;32m  - Nginx                   :\e[1;34m 81"  | tee -a log-install.txt
echo -e "\e[1;32m  - Wireguard               :\e[1;34m 7070"  | tee -a log-install.txt
echo -e "\e[1;32m  - L2TP/IPSEC VPN          :\e[1;34m 1701"  | tee -a log-install.txt
echo -e "\e[1;32m  - Shadowsocks-R           :\e[1;34m 1443-1543"  | tee -a log-install.txt
echo -e "\e[1;32m  - SS-OBFS TLS             :\e[1;34m 2443-2543"  | tee -a log-install.txt
echo -e "\e[1;32m  - SS-OBFS HTTP            :\e[1;34m 3443-3453"  | tee -a log-install.txt
echo -e "\e[1;32m  - V2RAY Vmess TLS         :\e[1;34m 4443"  | tee -a log-install.txt
echo -e "\e[1;32m  - V2RAY Vmess None TLS    :\e[1;34m 80"  | tee -a log-install.txt
echo -e "\e[1;32m  - Trojan                  :\e[1;34m 6443"  | tee -a log-install.txt
echo -e ""  | tee -a log-install.txt
echo -e "\e[1;36m   >>> Server Information & Other Features"  | tee -a log-install.txt
echo -e "\e[1;32m  - Timezone                :\e[1;34m Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo -e "\e[1;32m  - Fail2Ban                :\e[1;34m [ON]"  | tee -a log-install.txt
echo -e "\e[1;32m  - Dflate                  :\e[1;34m [ON]"  | tee -a log-install.txt
echo -e "\e[1;32m  - IPtables                :\e[1;34m [ON]"  | tee -a log-install.txt
echo -e "\e[1;32m  - Auto-Reboot             :\e[1;34m [ON]"  | tee -a log-install.txt
echo -e "\e[1;32m  - IPv6                    :\e[1;34m [OFF]"  | tee -a log-install.txt
echo -e "\e[1;32m  - Autoreboot On 00.00 GMT +7" | tee -a log-install.txt
echo -e "\e[1;32m  - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo -e ""  | tee -a log-install.txt
echo -e "\e[1;33m\e[1;33m------------------------------------------\e[1;36m[Badboy]\e[1;33m------------------------------------------" | tee -a log-install.txt
echo -e ""
echo " Reboot 10 Sec"
sleep 10
reboot
