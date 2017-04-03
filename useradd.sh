#!/bin/bash
   
### 任意のグループIDを設定。(可変値です)
GROUP_ID="1000"
 
### 登録したいユーザをechoで渡す
echo -e "batchuser\nwebdev" |while read USERNAME;do
 
  ### /etc/passwdファイルからユーザIDを取得
  USER_ID=`awk -F ':' '$4=="'${GROUP_ID}'"{ID=$3}END{print ID+1}' /etc/passwd` 
 
  ### パスワードを生成。( "ユーザ名_pass" という文字列になる)
  PASSWORD=`perl -e "print(crypt('${USERNAME}_pass', 'a5'));"`
 
  ### 既に登録されてないかのチェック
  grep "${USERNAME}" /etc/passwd > /dev/null 2>&1 
 
  ### 登録されていない場合、grepの戻り値が1になる
  if [ "$?" == "1" ];then
 
    ### useraddを実行
    useradd -u ${USER_ID} -g ${GROUP_ID} -d /home/${USERNAME} -m -p ${PASSWORD} ${USERNAME} 
  fi
done

