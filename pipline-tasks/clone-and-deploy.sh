#!/bin/sh
set -x -e

git clone https://github.com/a9s-examples/ruby-sinatra
curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github"  | tar -zx
mv cf /usr/local/bin
cf --version
cd ruby-sinatra
cf api https://api.aws.ie.a9s.eu
cf login -u ${cf_user} -p ${cf_password} -s ${cf_space} -o ${cf_org}
cf push a9s-ruby-fbe2 --hostname a9s-ruby-fbe2
[[ $(curl http://a9s-ruby-fbe2.aws.ie.a9sapp.eu |grep "Hello world" |wc -l) == 1 ]]
cf delete a9s-ruby-fbe2 -f

