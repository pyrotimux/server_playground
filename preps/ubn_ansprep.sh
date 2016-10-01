sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible python-pip python-dev build-essential 
cp /vagrant/preps/hosts /etc/ansible/hosts
cp /vagrant/preps/ansible.cfg /etc/ansible/ansible.cfg
sudo pip install xmltodict
sudo pip install pywinrm

