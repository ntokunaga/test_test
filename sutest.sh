#!/bin/bash

echo sutestStart!
echo `pwd`
sudo su - batchuser
echo `pwd`
echo `ls -l`
mkdir -p $HOME/codebuild_test_dir
echo `ls -l`
echo sutestFinish!

