#!bin/bash
#Created: 13/11/2018
#Upgrade 12/01/2019
#by: real strategy
#Successful update
#MESSAGE: Never stop learning, if you are here is out of curiosity and try to learn shell or bash with the help of google search among others and so you will have more ease of course take time but you will learn even if editing
clear 
while :
do
#menu banner
clear
echo -e "\e[1;33m(98/8)\e[1;32m" 
echo "    __  __           __     ______     __                  __             "
echo "   / / / /___  _____/ /_   / ____/  __/ /__________  _____/ /_____  _____ "
echo "  / /_/ / __ \/ ___/ __/  / __/ | |/_/ __/ ___/ __ \/ ___/ __/ __ \/ ___/ "
echo " / __  / /_/ (__  ) /_   / /____>  </ /_/ /  / /_/ / /__/ /_/ /_/ / /     "
echo "/_/ /_/\____/____/\__/  /_____/_/|_|\__/_/   \__,_/\___/\__/\____/_/      "
echo -e "\e[1;33mV= 2.0     (99) Spanish      (98) English     (97) Lithuania   " 
echo "" 
echo -e "\e[1;31m[1]\e[1;32m HOSTU PAIESKA"
echo -e "\e[1;31m[2]\e[1;32m SKANUOTI HOSTUS"
echo -e "\e[1;31m[3]\e[1;32m ISSAUGOTI HOSTUS"
echo -e "\e[1;31m[4]\e[1;32m SUKURTI PAYLOADA"
echo -e "\e[1;31m[5]\e[1;32m ATVIRU PORTU SKANAVIMAS"
echo -e "\e[1;31m[6]\e[1;32m DOMAINO IP INFORMACIJA"
echo -e "\e[1;31m[7]\e[1;32m USE MANUAL HOST E."
echo -e "\e[1;31m[8]\e[1;32m KUREJU ZINUTE"
echo -e "\e[1;31m[0]\e[1;32m ISEITI IS MENIU"
echo ""
echo -e "\e[1;36m"
echo -n "Pasirinkimas: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOSTAS: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mPaspauskite Enter, kad testumete ...!\e[0m";
read foo
;;
2)echo ""
echo "Rodoma Hosto busena...";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mPaspauskite Enter, kad testumete ...\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mNoredami parodyti busena, iklijuokite Hosta\e[0m";
echo -e "\e[1;31mPrisiminkite CTRL + C, kad iseitumete\e[0m";
echo -e "\e[1;36mHOSTAS: \e[0m";
cat>lista-host.txt
;;
4)clear
bash .payloads.lit
read foo;
;;
5)echo ""
echo -ne "\e[1;31m DOMAINAS(IP/WEB): ";
read MAIN
echo -ne "\e[1;31m PORTAS(53,80):  ";
read RTS
sleep 2
echo -e "\e[1;32m";
nmap -p $RTS $MAIN
read foo
;;
6)echo -ne "\e[1;31mSAITAS WEB/IP: ";
read WEB
echo ""
echo -e "\e[1;32m"
curl https://api.hackertarget.com/geoip/?q=$WEB
read foo
;;
7)clear
echo -e "\e[1;32mPerskaitykite viska, kad irankis butu tinkamai naudojamas...";
sleep 2.5
cat manualLT.txt
read foo
;;
12.25)clear
echo -e "\e[1;32mIejimas i slapta meniu...";
sleep 2
bash ._
read foo
;;
8)echo ""
echo -e "\e[1;33mCREDITS TO THE DEVELOPER\e[0m"
echo ""
echo -e "\e[1;31mCoder: @RealStrategy y el grupo vip RS"
echo -e "\e[1;32m"
echo "MODIFIKUOTA ROLKOS "
echo "TELEGRAM: https://t.me/Asrolka "
echo ""
echo -e "\e[1;31mZINUTE NUO RS\e[0m"
echo ""
echo -e "\e[1;36mNiekada nenustok mokytis... :)\e[0m"
echo ""
read foo;
;;
97)clear
echo "translating to lithuania language...";
sleep 3
bash real-host-v3.sh
;;
98)clear
echo "translating to english language...";
sleep 3
bash real-host-v2.sh
;;
99)clear
echo "Translating to spanish language...";
sleep  3
bash .real-host.sh
;;
#Fin del menu/in the end
0)clear
exit 0;;
#error
*)clear
echo "Netinkama komanda...";
sleep 1.5
;;
esac
done


