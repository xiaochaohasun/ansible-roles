#!/usr/bin/env expect

set dbname [lindex $argv 0]
set dbuser [lindex $argv 1]
set dbpwd [lindex $argv 2]

spawn mysql -uroot -p
expect "password:"
send "\r"
expect ">"
send "create database $dbname default charset 'utf8';\r"
send "grant all on $dbname.* to '$dbuser'@'127.0.0.1' identified by '$dbpwd';\r"
send "flush privileges;\r"
send "exit\r"
interact
