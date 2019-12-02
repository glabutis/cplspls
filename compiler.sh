#!/bin/bash
path=".etc/textedit.txt"
while IFS= read -r line
do 
liney = "$line"
done < "$input"
cd .projects
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
  vim app.cpp
}

function run() {
	read -p "Enter name of project you would like to run: " name
	cd ".$name" 
	sudo bash compile.sh
}

function show() {
	echo "Here are current projects listed in the directory..."
	echo $(ls -a | grep .)
        echo "....." 
	read -p "Press enter to continue" 
	startScreen	
}
function startScreen() {
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
echo "4. Show projects"
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

if [ $option == 4 ]
then 
show
fi
}

startScreen
