#!/bin/bash

# setup EB CLI
eb --version || (sudo pip install awsebcli && eb --version)
if [ ! -f .elasticbeanstalk/config.yml ]; then
  eb_init_cmd="eb init '$EB_APP' --region '$AWS_REGION' --platform '$EB_PLATFORM'"
  echo "$eb_init_cmd"
  bash -c "${eb_init_cmd}"
fi

# show EB env status
eb status
