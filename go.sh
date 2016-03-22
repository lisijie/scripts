#!/bin/bash
#----------------------
# 登录到远程服务器
# 用于使用SSH KEY登录
# @author lisijie
# ---------------------

ip=$1
user=$2
port=$3

defUser="www"
defPort="2222"

while [[ "$ip" == "" ]]; do
	read -p "请输入登录服务器(IP [user] [port])：" ip user port
done

if [ -z "$user" ]; then
	user=$defUser
fi

if [ -z "$port" ]; then
	port=$defPort
fi

# echo "ssh -p ${port} ${user}@${ip}"

ssh -p ${port} ${user}@${ip}
