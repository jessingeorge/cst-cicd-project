sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ${USER}
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt update
sudo apt install jenkins -y
sudo systemctl status jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl status jenkins
sudo journalctl -u jenkins.service
sudo apt install openjdk-11-jdk -y
java -version
sudo nano /etc/default/jenkins
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo apt install openjdk-11-jdk -y
sudo nano /etc/default/jenkins
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
clear
ls
sudo apt-get purge docker-ce docker-ce-cli containerd.io
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo rm /usr/local/bin/docker-compose
sudo apt-get remove --purge jenkins
sudo rm /etc/apt/sources.list.d/jenkins.list
sudo rm /usr/share/keyrings/jenkins-keyring.asc
sudo rm -rf /var/lib/jenkins
sudo rm -rf /var/log/jenkins
clear
sudo apt update -y
apt install openjdk-17-jre-headless -y
vi setup.sh
sh setup.sh 
apt install docker.io -y
maven
apt install maven -y
systemctl start jenkins
systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
