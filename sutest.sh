#!/bin/bash

devpath = $(pwd)

echo sutestStart!
echo `pwd`
echo pathresult!
echo $devpath
echo $1
sudo su - batchuser
echo `pwd`
echo `ls -l`
mkdir -p $1/dev
echo `ls -l`
echo sutestFinish!

