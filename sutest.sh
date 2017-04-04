#!/bin/bash

devpath = $(pwd)

echo sutestStart!
echo `pwd`
echo pathresult!
echo ${devpath}
sudo su - batchuser
echo `pwd`
echo `ls -l`
mkdir -p ${devpath}/dev
echo `ls -l`
echo sutestFinish!

