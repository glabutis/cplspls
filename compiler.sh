#!/bin/bash
cd /etc/cplscpls/projects
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
exit
}

function load() {
  read -p "Enter the name of the project you want to load: " name
  cd ".$name"
  atom app.cpp
}

function run() {
	read -p "Enter name of project you would like to run: " name
	cd ".$name" 
	sudo bash compile.sh
}

echo "   _____       _           _  "
echo "  / ____|     | |         | |    "
echo " | |     _ __ | |___ _ __ | |___ "
echo " | |    | '_ \| / __| '_ \| / __|"
echo " | |____| |_) | \__ \ |_) | \__ \\"
echo "  \_____| .__/|_|___/ .__/|_|___/"
echo "        | |         | |          "
echo "        |_|         |_|          "
echo "Select below which option you would like to use..."
echo "1: Make new project"
echo "2. Open project"
echo "3. Run project"
read -p ">>" option
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
