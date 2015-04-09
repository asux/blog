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
eb --version || (pip install awsebcli && eb --version)
[ -d .elasticbeanstalk ] || mkdir -p .elasticbeanstalk
[ -f .elasticbeanstalk/config ] || eb init $EB_APP --profile default --region $AWS_REGION --platform "$EB_PLATFORM"

# show EB env status
eb status
