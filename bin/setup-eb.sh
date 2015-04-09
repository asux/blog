#!/bin/bash

# setup credentials
if [ ! -f ~/.aws/credentials ]; then
  mkdir -p ~/.aws
  cat <<-EOF > ~/.aws/credentials
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOF
fi

# setup EB CLI
eb --version || (sudo pip install awsebcli && eb --version)
[ -d .elasticbeanstalk ] || mkdir -p .elasticbeanstalk
if [ ! -f .elasticbeanstalk/config.yml ]; then
  eb_init_cmd="eb init '$EB_APP' --profile 'default' --region '$AWS_REGION' --platform '$EB_PLATFORM'"
  echo $eb_init_cmd
  $eb_init_cmd
fi

# show EB env status
eb status
