#!/bin/bash

#wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" http://download.oracle.com/otn-pub/java/jdk/6u33-b03/jre-6u33-linux-i586.bin
#chmod +x jre-6u33-linux-i586.bin
#./jre-6u33-linux-i586.bin
#sudo ln -s /home/ubuntu/jre1.6.0_33/bin/java /usr/bin/java
#sudo bash -c "echo 'export JAVA_HOME=/usr/bin/java' >> /etc/profile"
#source /etc/profile
wget https://s3.amazonaws.com/adp-chef/wlp-developers-8.5.0.0.jar
echo -e '\n\n1\n' | java -jar wlp-developers-8.5.0.0.jar
wlp/bin/server create
sudo mv wlp_scripts/server.xml wlp/usr/servers/defaultServer/
wlp/bin/server start
cd wlp/usr/servers/defaultServer/dropins/
wget $1
