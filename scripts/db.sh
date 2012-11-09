SSH_COMMAND="/usr/local/pgsql/bin/pg_dumpall -U postgres' > /tmp/db.sql"

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

