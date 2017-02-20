#!/bin/bash
#Script with all the commands I run for each instance

#Mount data drive
mount -t ext4 /dev/xvdf /data

#Run startup scripts
/root/start-hadoop.sh
/data/start_postgres.sh

#Create file to set environment variables
echo "PATH=$PATH:$HOME/bin" > /etc/profile.d/w205_spark_var.sh
echo "export PATH" >> /etc/profile.d/w205_spark_var.sh

export PATH=$SPARK_HOME/bin:$PATH >> /etc/profile.d/w205_spark_var.sh
