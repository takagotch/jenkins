

vagrant ssh
sudo yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
sudo yum -y install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo \
	http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import \
	http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum -y install jenkins-ci.org/redhat/jenkins-ci.org.key
sudo systemctl start jenkins.service

systemctl status firewalld
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
firewall-cmd --reload

sudo yum -y install git
git clone https://github.com/tky/ansible-playbook.git

sudo yum -y install epel-release
sudo yum -y install ansible

cd ansible-playbook
ansible-playbook -i development site.yml --diff
curl http://192.168.33.10:8080/
sudo cat /var/lib/jenkins/secrets/initialAdminPasswordxxx


uname -n
pwd
ls -l

git clone https://github.com/tky/ansible-playbook.git /tmp/ansible-playbook

jenkins ALL=(ALL) NOPASSWD:ALL

cd /tmp/ansible-playbook ansible-playbook -i development site.yml --diff

cd /tmp/serverspec /usr/loca/bin/rake spec

ansible-playbook -i development site.yml
ansible-playbook -i production site.yml

cd /tmp/ansible-playbook ansible-playbook -i $(ENVIRONMENT) site.yml --diff
cd /tmp/ansible-playbook ansible-playbook -i production site.yml --diff
curl 192.168.33.10




