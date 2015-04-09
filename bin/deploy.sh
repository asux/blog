#!/bin/bash

[ -z $EB_ENV ] && EB_ENV=$1

echo "Deploying to EB environment: $EB_ENV"
eb deploy $EB_ENV
