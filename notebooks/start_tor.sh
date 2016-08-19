#!/bin/zsh

i=$argv[1]
control_port=$argv[2]
socks_port=$argv[3]

pid_file="tor"$i".pid"
data_dir="tor/tor"$i

tor --RunAsDaemon 1 --CookieAuthentication 0 --ControlPort $control_port \
--PidFile $pid_file --SocksPort $socks_port --DataDirectory $data_dir > /dev/null 2>&1

pid=`cat $data_dir/$pid_file`
echo $pid

