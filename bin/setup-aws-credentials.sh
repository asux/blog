#!/bin/bash

if [ ! -f ~/.aws/credentials ]; then
  mkdir -p ~/.aws
  cat <<-EOF > ~/.aws/credentials
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOF
fi

# show AWS credentials
if [ ! -z $DEBUG ]; then
  echo "AWS credentials:"
  cat ~/.aws/credentials
fi
