#!/data/data/com.termux/files/usr/bin/bash env

############################################
#  SERVER R-21 INSTALATION
############################################
# UPDATE AND UPGRADE
pkg up -y && pkg upgrade -y

# SWITCH PERMISSIVE
su -c 'setenforce 0'

# INSTALL DEOENDENCIES
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

# INSTALL LOLCAT
gem install lolcat

# REMOVE EXCTING FILES
tsu -c 'find . -iname '*Automation.sh*' -exec rm -rf {} \;'

# FETCH AND FINAL SETUP
tsudo wget https://raw.githubusercontent.com/TeamTCA/TCA-Automation/master/Automation.sh -O ./Automation.sh
tsu -c chmod a+x Automation.sh
tsu -c ./Automation.sh
