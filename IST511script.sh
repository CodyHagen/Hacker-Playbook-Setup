﻿

#!/bin/bash

​

echo ''
echo'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
echo'=IST 511 Hacking Tools Script                                    ='
echo'=Some of these tools can be used for the hacker playbook 2 or 3  ='
echo'=Currently made for x64 based systems                            ='
echo'=Works on Debian Based linux systems                             ='
echo'=***Beta Version 0.9***            ='
echo'=Created by Cody Hagen                                           ='
echo'@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
echo ''​

# BURP install may not work code needs to be played with some more possibly...​

# Prepare hacking tools directory

echo'=Messing with your machine just one moment...'
sleep 2s
echo'[*] Creating folder for all your hacker tools in /opt'
sleep 1s
mkdir /opt/HackingTools/
echo ''
sleep 3s
read -rsp $'Press any key to continue...\n' -n1 key
clear

# Setting up metasploit with postgresql

echo '[*] Setting up metasploit with postgresql'
sleep 2s
service postgresql start
service metasploit start
echo ''
sleep 3s
read -rsp $'PRess any key to continue... \n' -n1 key
clear​

# Adding postgresql and metasploit services rc.d defaults

echo '[*] Adding postgresql and metasploit to rc.d defaults'
sleep 2s
update-rc.d -f postgresql defaults
update-rc.d -f metasploit defaults
echo ''
sleep 3s
read -rsp $'Press any key to continue... \n' -n1 key
clear

# Reconnaissance - Discover Scripts

echo '[*] Installing Discover Scripts'
echo '{Credit}:leebaird'
sleep 2s
cd /opt/HackingTools/
git clone https://github.com/leebaird/discover.git
cd /opt/HackingTools/discover/
/opt/HackingTools/discover/setup.sh
echo ''
sleep 3s
read -rsp $'Press any key to continue... \n' -n1 key
clear


#Hashes from DomainController & Reverse Shells - SMBexec

echo '[*] Installing SMBexec get those shells ready'
echo '{Credit}: Brav0hax'
sleep 2s
cd /tmp/
git clone https://github.com/brav0hax/smbexec.git
cd /tmp/smbexec/
echo 'Option: 1'
/tmp/smbexec/install.sh
echo '[*] Path for SMBexec install: '
read smbexecpath
$smbexecpath/smbexec/install.sh
echo ''
sleep 3s
read -rsp $'Press any key to continue... \n' -n1 key
clear
​

#Python Meterpreter - Veil

echo '[*] Slithering into your machine'
echo 'Installing Veil Framework'
sleep 2s
cd /opt/HackingTools/
git clone https://github.com/Veil-Framework/Veil.git Veil
cd /opt/HackingTools/Veil/setup
/opt/HackingTools/Veil/setup/setup.sh
echo ''
sleep 3s
read -rsp $'Press any key to continue... \n' -n1 key
clear
​

# Quicker Scanning and Identification -NMAP Scripts

echo '[*] Scanning you now'
sleep 3s
echo '...Scan completed'
sleep 2s
echo '[*] Installing NMAP scripts'
sleep 1s
cd /usr/share/nmap/scripts/
wget https://raw.githubusercontent.com/hdm/scan-tools/master/nse/banner-plus.nse
echo ''
sleep 3s
read -rsp $'PRess any key to continue... \n' -n1 key
clear
​

#Pull Passwords from Memory - WCE (Windows Credential Editor)
echo '[*] Pulling your passwords from memory'
sleep 2s
echo '...gaining acess'
sleep 4s
echo '[*] Downloading WCE 1.42 from Website & Installing'
sleep 1s
mkdir /opt/HackingTools/wce/
cd /tmp/
wget http://www.ampliasecurity.com/research/wce_v1_42beta_x64.zip
unzip -d /opt/HackingTools/wce/ wce_v1_42beta_x64.zip
rm -f wce_v1_42beta_x64.zip
echo ''
sleep 3s 
read -rsp $'Press any key to continue... \n' -n1 key
clear
​

#Pulls Passwords from Memory - MimiKatz
echo '[*] Pulling your passwords from memory again...'
sleep 2s
echo '...gaining acess'
sleep 4s
echo '[*] Installing Mimikatz'
sleep 1s
mkdir /opt/HackingTools/mimikatz/
cd /tmp/
wget https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20190720/mimikatz_trunk.zip
unzip -d /opt/HackingTools/mimikatz mimikatz_trunk.zip
rm -f mimikatz_trunk.zip
sleep 3s
read -rsp $'PRess any key to continue...\n' -n1 key
clear

​

# Usernames, Passwords, URLs, Sensitive data patterns,
# Fuzzing payloads, Web shells, and many more - SecLists
echo '[*] Checking Santas naughty list...'
sleep 2s
echo '... Checking it twice'
sleep 2s
echo '[*] Installing SecLists'
sleep 1s
cd /opt/HackingTools/
git clone https://github.com/danielmiessler/SecLists.git seclists
echo ''
sleep 3s
read -rsp $'Press any key to conntinue... \n' -n1 key
clear
​

# Snapshot Websites - PeepingTom
echo '[*] Creeping through the files'
sleep 2s
echo '... peering in'
sleep 3s
echo '[*] Installing PeepingTom'
sleep 1s
cd /opt/HackingTools/
git clone https://bitbucket.org/LaNMaSteR53/peepingtom.git peepingtom
cd /opt/HackingTools/peepingtom/
sleep 3s
wget https://gist.github.com/nopslider/5984316
echo ''
sleep 3s
reas -rsp $'Press any key to continue...\n' -n1 key
clear
​

# Post Exploitation - PowerScript
echo '[*] Already in your system'
sleep 2s
echo '...starting the matrix'
sleep 3s
echo '[*] Installing PowerScript for scriptkiddies'
sleep 4s
cd /opt/HackingTools/
git clone https://github.com/PowerShellMafia/PowerSploit.git powersploit
echo ''
sleep 3s
read -rsp $'Verify github repository was downloaded; then press any key to continue...\n' -n1 key
cd /opt/HackingTools/powersploit/
wget https://github.com/obscuresec/random/blob/master/StartListener.py
echo ''
sleep 3s
read -rsp $'Verify github repository was downloaded; then press any key to continue...\n' -n1 key
wget https://github.com/darkoperator/powershell_scripts/blob/master/ps_encoder.py
echo ''
sleep 3s
read -rsp $'Verify all github repositories were downloaded properly; then press any key to continue' -n1 key
clear


# Gain NTLM challenge/response - Responder
echo '[*] Installing Responder'
cd /opt/HackingTools/
git clone https://github.com/SpiderLabs/Responder.git
echo ''
sleep 3s
read -rsp $'Verify repository was installed properly then press any key to continue' -n1 key
clear
​

# Bypassuac - Used to bypass UAC in post exploitation
# → https://www.trustedsec.com/downloads/
echo '[*] Installing Bypass UAC'
sleep 3s
cd /tmp/
wget https://www.trustedsec.com/files/bypassuac.zip
echo 'Unzipping now...'
sleep 2s
unzip bypassuac.zip
cp bypassuac/bypassuac.rb /opt/metasploit/apps/pro/msf3/scripts/meterpreter/
mv bypassuac/uac/ /opt/metasploit/apps/pro/msf3/data/exploits/
rm -Rf bypassuac
echo ''
sleep 3s
read -rsp $'Press any key to continue...\n' -n1 key
clear​


# Social Engineering - SET (Social Engineering Toolkit)
echo '[*] Transfering 1 Million Dollars'
sleep 2s
echo '...Sending email to phish'
sleep 4s
echo '[*] Installing SET (Social Engineering Toolkit'
sleep 1s
cd /opt/HackingTools/
git https://github.com/trustedsec/social-engineer-toolkit.git set
cd /opt/HackingTools/set
/opt/HackingTools/set/setup.py install
echo ''
sleep 3s
read -rsp $'Press any key to continue...\n' -n1 key
clear​


# Cross-Site Scripting FrameWork - BeEF
echo '[*] Marinating BeEF'
sleep 2s
echo '[*] Installing BeEF'
sleep 1s
apt-get install beef-xss
echo ''
sleep 3s
read -rsp $'Press any key to continue...\n' -n1 key
clear​​

# Python Exploit Development Assistance - PEDA
echo '[*] Reporting abuse...'
sleep 2s
echo '[*] Installing PEDA'
sleep 2s
git clone https://github.com/longld/peda.git /opt/peda
echo 'source /opt/peda/peda.py' >> ~/.gdbinit
echo '' 
sleep 3s
read -rsp $'Press any key to continue...\n' -n1 key
clear

​
# Creating an Environment for Cobalt Strikes and Nessus
echo '[*] Preping Missiles for Launch'
sleep 2s
echo '[*] updating time machine this may take a few minutes... maybe...'
sleep 7s
apt-get update
sleep 3s 
read -rsp $'Press any key to continue...\n' -n1 key
clear

echo '[*] Java has feelings too.'
sleep 2s
apt-get install openjdk-11-jdk
sleep 3s
res -rsp $'Press any key to continue...\n' -n1 key
clear​

​
# Cureent nessus install not working continuing to do research to make it work.
# Getting Nessus <link may not work with wget> 
# echo '[*] Installing Nessus'
# Check for openssl, zlib, librsync,
# and uthash libraries and development
# packages installed

​

# Checking Packages for BURP
echo '[*] Double checking packaging'
echo 'Package is on route'
apt-get install make pkg-config check g++ \
	librsync-dev libz-dev libssl-dev uthash-dev
sleep 2s
echo '[*] One more incoming'
apt-get install autoconf automake libtool
sleep 3s
read -rsp $'Press any key to continue...\n' -n1 key
clear


# BackUp and Restore Program - BURP
echo '[*] Excuse me... Installing BURP'
cd /opt/HackingTools/
git clone https://github.com/grke/burp.git burp
sleep 3s
read -rsp $'Press any keys to stop this horrible horrible script...\n' -n1 key
clear

echo 'Happy hacking; may you find the secrets to making the flux capacitor...'
sleep 5s
clear
