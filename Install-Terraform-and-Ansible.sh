!# /bin/bash
################################################
# Sets up very basic configuration of the server
sudo apt-get git 

####################
###Install Terraform
sudo snap install terraform --classic

#####################################################
###Specifiying S3 bucket to store Terraform statefile


###################################
###create new workspace and list it
git clone https://github.com/Qu-tobechukwu/Projects-Data
terraform init
terraform workspace new newws
terraform workspace list
terraform workspace show

###################
###Install Ansible
# not sure if this will work next bit is neccessary
echo "Adding PPA, then installing Ansible"
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install software-properties-common ansible python-apt -y
 
echo "Importing Ansible signing keys"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
echo "Adding Ansible PPA, then installing Ansible"
sudo apt-add-repository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu artful main"
sudo apt-get update 
sudo apt-get install ansible -y

# if that did work then no need to execute the below. First checks if ansible is installed.
if hash ansible 2>/dev/null ; then
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
git clone https://github.com/ansible/ansible.git
cd ./ansible
source ./hacking/env-setup
python3 -m pip install --user -r ./requirements.txt
git pull --rebase
fi
