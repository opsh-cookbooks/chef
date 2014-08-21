chef_server_url '${chef_server_url}'
knife[:editor]="/usr/bin/vim"
knife[:node_name] = "${node_name}"
knife[:ssh_user] = 'ubuntu'


knife[:aws_access_key_id] = "$AWS_ACCESS_KEY"
knife[:aws_secret_access_key] = "$AWS_SECRET_ACCESS_KEY"
knife[:region] = "us-west-2"

