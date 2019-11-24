#!/bin/sh
echo Enter the project name:
read name
mkdir $name
cd $name
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
