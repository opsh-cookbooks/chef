
#fix path variable later

which chef-client &> /dev/null
if [ $? -eq 0 ]; then
  echo "[notice] chef installed. version: $(chef-client -v)"
else
  curl -L https://www.opscode.com/chef/install.sh | sudo bash
  echo 'PATH=$PATH:/opt/chef/embedded/bin' >> ~/.bashrc
fi
