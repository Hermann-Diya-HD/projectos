#!/bin/bash

#Autor: Herman Diyabanza (HD)

#Versao do jdk 
versao=$(ls /usr/lib/java)

sudo update-alternatives --remove-all java >/dev/null
sudo update-alternatives --remove-all javac >/dev/null
sudo update-alternatives --remove-all javaws >/dev/null



uninstall java >/dev/null

sudo update-alternatives --remove "java" "/usr/lib/java/$versao/bin/java" >/dev/null

sudo update-alternatives --remove "javac" "/usr/lib/java/$versao/bin/javac" >/dev/null

sudo update-alternatives --remove "javaws" "/usr/lib/java/$versao/jre/bin/javaws" >/dev/null

sudo apt-get remove --purge oracle-java8-installer >/dev/null

sudo rm -r /usr/lib/java/$versao  >/dev/null

sudo apt-get remove --purge oracle-java8-installer >/dev/null

 
sudo apt-get remove java-package  >/dev/null
sudo apt-get remove --auto-remove java-package  >/dev/null
