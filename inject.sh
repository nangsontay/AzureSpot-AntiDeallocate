#!/usr/bin/expect
set timeout 20
set password "21052005"
set file_path "./__tester__.cpp"
set remote_user "root"
set remote_ip "remote.nangsontay.com"
set remote_directory "/root"

spawn scp $file_path $remote_user@$remote_ip:$remote_directory
expect "password:"
send "$password\r"
interact
