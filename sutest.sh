#!/bin/bash


echo sutestStart!
echo `pwd`
echo pathresult!
echo echo $(cd $(dirname $0) && pwd)
sudo su - batchuser
echo `pwd`
echo `ls -l`
mkdir -p $(cd $(dirname $0) && pwd)/dev
echo `ls -l`
echo sutestFinish!

