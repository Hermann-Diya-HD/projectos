#!/bin/bash

#Autor: Herman Diyabanza (HD)

tar -zxvf jdk-8u201-linux-x64.tar.gz

sudo mkdir /usr/lib/java 

mv jdk1.8.0_201/ /usr/lib/java 


sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/java/jdk1.8.0_201/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/java/jdk1.8.0_201/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/java/jdk1.8.0_201/bin/javaws" 1
gedit ~/.bashrc file

##adicionar estas linhas

cat <<'EOF' > ~/.bashrc
export JAVA_HOME=/usr/lib/java/jdk1.8.0_201
export PATH="$PATH:$JAVA_HOME/bin"
EOF
 



