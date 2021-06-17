source_repo="https://github.com/kristofre/perform2021-quality-gates"
#source_repo="git@github.com:dynatrace-ace/perform2021-quality-gates.git"
clone_folder="bootstrap"
shell_user="ace"
home_folder="/home/$shell_user"

apt-get update -y 
apt-get install -y git
snap install jq 
snap install docker


rm -rf bootstrap
##############################
# Clone repo                 #
##############################
cd $home_folder
mkdir "$clone_folder"
cd "$home_folder/$clone_folder"
git clone "$source_repo" .
chown -R $shell_user $home_folder/$clone_folder
cd "$home_folder/$clone_folder/"
chmod u+x ./build.sh  

./build.sh "$home_folder" "$clone_folder" "$source_repo"

