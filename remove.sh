cd /etc/cplspls/projects
echo Input dir you want to remove
read name
cd $name
sudo rm * -f
cd ..
sudo rmdir $name
