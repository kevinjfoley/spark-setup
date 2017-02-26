#!/bin/bash
#Script with all the commands I run for each instance

#Mount data drive
mount -t ext4 /dev/xvdf /data

#Run startup scripts
/root/start-hadoop.sh
/data/start_postgres.sh

#Create file to set environment variables
export SPARK_HOME=/data/spark15
export PATH=$SPARK_HOME/bin:$PATH

#Add ssh key
eval $(ssh-agent -s)
ssh-add /data/.ssh/id_rsa

#Git config
git config --global user.name "Kevin Foley"
git config --global user.email "kfoley15@gmail.com"
