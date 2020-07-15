#! /bin/bash
# 输入 bash RMfile.sh YOUR_DIR_NAME 运行文本
# 使用前需要修改字符串
function read_dir(){
for file in `ls $1` #注意此处这是两个反引号，表示运行系统命令
do
 if [ -d $1"/"$file ] #注意此处之间一定要加上空格，否则会报错
 then
 read_dir $1"/"$file
 else
  if [[ $1'/'$file =~ ".tex.bak" ]]
  then
  rm $1'/'$file
  fi
 fi
done
} 
#读取第一个参数
read_dir $1
