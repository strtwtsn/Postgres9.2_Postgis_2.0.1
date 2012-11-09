package "expect"


bash "Change database.yml files to point at new server" do
user "root"
code <<-EOH
/usr/local/src/apps.sh
EOH
end
