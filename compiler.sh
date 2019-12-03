#!/bin/bash
cd cplspls/.projects
green = '\033[0;32m'
nc = '\033[0m'
function new() {
read -p "Enter the project name below: " name
mkdir ".$name"
cd ".$name"
touch app.cpp
echo "#include <iostream>" >> app.cpp
echo "using namespace std;" >> app.cpp
echo "int main(){" >> app.cpp
echo " " >> app.cpp
echo " " >> app.cpp
echo "}" >> app.cpp
touch compile.sh
echo "g++ app.cpp" >> compile.sh
echo "./a.out" >> compile.sh
read -p "Press enter to continue"
startScreen
}

function load() {
  read -p "Enter the name of the project you want to load: " name
  cd ".$name"
  vim app.cpp
  read -p "Press enter to continue"
  startScreen
}

function run() {
	read -p "Enter name of project you would like to run: " name
	cd ".$name" 
	sudo bash compile.sh
	read -p "Press enter to continue"
	startScreen
}

function show() {
	echo "Here are current projects listed in the directory..."
	echo $(ls -a | grep .)
        echo "....." 
	read -p "Press enter to continue" 
	startScreen	
}
function startScreen() {
clear
echo -e "\e[0;31m   _____       _           _  "
echo -e "  / ____|     | |         | |    "
echo -e " | |     _ __ | |___ _ __ | |___ "
echo -e " | |    | '_ \| / __| '_ \| / __|"
echo -e " | |____| |_) | \__ \ |_) | \__ \\"
echo -e "  \_____| .__/|_|___/ .__/|_|___/"
echo -e "        | |         | |          "
echo -e "        |_|         |_|         \e[0m "
echo -e "Select below which option you would like to use..."
echo -e "1: \e[0;32mMake new project \e[0m"
echo -e "2. \e[0;32mOpen project \e[0m"
echo -e "3. \e[0;32mRun project \e[0m"
echo -e "4. \e[0;32mShow projects \e[0m"
read -p ">>" option
if [ $option == 0 ] 
then
clear 
echo " Exiting now........"
exit
fi

if [ $option == 1 ]
then
new
fi

if [ $option == 2 ]
then
load
fi

if [ $option == 3 ]
then 
run 
fi

if [ $option == 4 ]
then 
show
fi

if [ $option != 1 ] && [ $option != 2 ] && [ $option != 3 ] && [ $option != 4 ] && [ $option != 0 ] 
then 
echo "Not a valid command"
read -p "Press enter to continue..."
startScreen
fi

}

startScreen
