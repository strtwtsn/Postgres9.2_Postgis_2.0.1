SSH_COMMAND="find / -name database.yml|xargs sed -i -e "s/$(cat /usr/local/src/olddb)/$(cat /usr/local/src/newdb)/g""

#start the expect fun
/usr/bin/expect << EOF
set timeout 120
spawn ssh $SSH_USER@$SSH_HOST {$SSH_COMMAND}
expect {
    "$SSH_HOST*assword" {
    send {$SSH_PASS}
    send "\n"
    }
    default {}
}
expect eof
EOF

