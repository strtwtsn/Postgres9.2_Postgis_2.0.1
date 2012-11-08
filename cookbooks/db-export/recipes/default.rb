bash "Export remote db and import into local instance" do
user "root"
code <<-EOH
/usr/local/src/ssh.exp '/usr/local/pgsql/bin/pg_dumpall -U postgres' > /tmp/db.sql
cat /tmp/db.sql|sudo -u postgres /usr/local/pgsql/bin/psql
EOH
end


