

chef=$(gem list chef  | grep "^chef ")
if [ $? -eq 0 ]; then
  version="$(echo $chef | sed 's/chef (\(.*\)).*/\1/g' )"
  echo "[notice] gem chef installed. version: $version"
else
  gem install chef --no-ri --no-rdoc
fi
