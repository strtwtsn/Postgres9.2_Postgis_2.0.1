package "expect"
bash "Export remote db and import into local instance" do
user "root"
code <<-EOH
/usr/local/src/db.sh
cat /tmp/db.sql|sudo -u postgres /usr/local/pgsql/bin/psql
EOH
end


