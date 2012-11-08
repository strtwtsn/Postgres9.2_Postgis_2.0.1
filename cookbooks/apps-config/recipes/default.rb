bash "Change database.yml files to point at new server" do
user "root"
code <<-EOH
/usr/local/src/sshapps.exp 'sudo find / -name database.yml|sudo xargs sed -i -e "s/$(cat /usr/local/src/olddb)/$(cat /usr/local/src/newdb)/g"'
EOH
end
