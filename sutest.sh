#!/bin/bash


echo sutestStart!
echo `pwd`
echo pathresult!
echo $(cd $(dirname $0) && pwd)
sudo su - batchuser
echo `pwd`
echo `ls -l`
mkdir -p $(cd $(dirname $0) && pwd)/dev
echo `ls -l`
touch $(cd $(dirname $0) && pwd)/test.log
echo `ls -l`
sudo chmod 755 $(cd $(dirname $0) && pwd)/test.log
echo `ls -l`
aws s3 cp $(cd $(dirname $0) && pwd)/test.log s3://ebisu-bucket/
echo sutestFinish!

