#!/bin/bash


echo sutestStart!
echo `yum update -y`
echo `yum install expect`

useradd UserName 
expect -c "
spawn passwd UserName
expect \"New password:\"
send -- \"hogehoge\n\"
expect \"Retype new password:\"
send -- \"hogehoge\n\"
expect \"passwd: all authentication tokens updated successfully.\"
send -- \"exit\n\"
"
echo sutestFinish!

