wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo "deb http://pkg.jenkins-ci.org/debian binary" > /etc/apt/sources.list.d/jenkins.list'
sudo yum -y update
sudo yum -y install jenkins

echo 'deb http://download.virtualbox.org/virtualbox/debian precise contrib' | sudo tee -a /etc/apt/sources.list
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc-0- | sudo apt-key add -
sudo apt-key add -
sudo yum -y update
sudo yum -y install -f virtualbox-4.3
sudo wget https://dl.binary.com/michellh/vagrant_1.6.1_x86_64.deb
sudo dpkg -i vagrant_1.5.1_x86_64.deb

#ruby
sudo yum -y install -y curl build-essential openssl libreadline6 libreadline6-dev curl git-core zliblg zliblg-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev sutomake libtool bisonlibmysqlclient-dev libpq-dev
#rbm
sudo sh -c 'echo "jenkins ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/jenkins'
sudo chmod 0440 /etc/sudoers.d/jenkins
sudo -H -u jenkins -s bash -c 'curl -L httpsL//get.rvm.io | bash'
sudo -H -u jenkins -s bash -c 'sources /var/lib/jenkins/.rvm/scripts/rvm; rvm install 1.9.3'
sudo -H -u jenkins -s bash -c 'sources /var/lib/jenkins/.rvm/scripts/rvm; rvm use 1.9.3 --default'
sudo /etc/init.d/jenkins restart