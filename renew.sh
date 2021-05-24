#!/bin/bash
# Script by : Badboy
clear
echo -e ""
echo -e "\e[1;33m==============================================================="
echo -e "\e[1;36m                    AutoScriptVPS by  Badboy                   "
echo -e "\e[1;36m                           Redfox VPN                          "
echo -e "\e[1;33m==============================================================="
read -p "         Username       :  " User
egrep "^$User" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "         Day Extend     :  " Days
Today=`date +%s`
Days_Detailed=$(( $Days * 86400 ))
Expire_On=$(($Today + $Days_Detailed))
Expiration=$(date -u --date="1970-01-01 $Expire_On sec GMT" +%Y/%m/%d)
Expiration_Display=$(date -u --date="1970-01-01 $Expire_On sec GMT" '+%d %b %Y')
passwd -u $User
usermod -e  $Expiration $User
egrep "^$User" /etc/passwd >/dev/null
echo -e "$Pass\n$Pass\n"|passwd $User &> /dev/null
clear
echo -e ""
echo -e "\e[1;33m==============================================================="
echo -e "\e[1;36m                    AutoScriptVPS by  Badboy                   "
echo -e "\e[1;36m                           Redfox VPN                          "
echo -e "\e[1;33m==============================================================="
echo -e ""
echo -e "\e[1;33m========================================"
echo -e "\e[1;32m    Username        :\e[1;34m  $User"
echo -e "\e[1;32m    Days Added      :\e[1;34m  $Days Days"
echo -e "\e[1;32m    Expires on      :\e[1;34m  $Expiration_Display"
echo -e ""
echo -e "\e[1;33m========================================"
else
clear
echo -e ""
echo -e "\e[1;33m==============================================================="
echo -e "\e[1;36m                    AutoScriptVPS by  Badboy                   "
echo -e "\e[1;36m                           Redfox VPN                          "
echo -e "\e[1;33m==============================================================="
echo -e ""
echo -e "\e[1;33m========================================"
echo -e "\e[1;32m        Username Doesnt Exist           "
echo -e ""
echo -e "\e[1;33m========================================"
fi
