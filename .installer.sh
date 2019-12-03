#!bin/bash
echo "   _____       _           _  "
echo "  / ____|     | |         | |    "
echo " | |     _ __ | |___ _ __ | |___ "
echo " | |    | '_ \| / __| '_ \| / __|"
echo " | |____| |_) | \__ \ |_) | \__ \\"
echo "  \_____| .__/|_|___/ .__/|_|___/"
echo "        | |         | |          "
echo "        |_|         |_|          "
echo "Welcome the the cplspls installer!"
sudo apt install g++
mkdir .etc
touch .etc/textedit.txt
mkdir .projects
sudo echo "alias c = sudo bash /home/cplspls/compiler.sh" >> ../bash.rc
echo "Installed! Thanks for using cplspls"

