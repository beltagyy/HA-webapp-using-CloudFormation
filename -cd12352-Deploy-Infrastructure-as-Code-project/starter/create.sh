#!/bin/bash

echo "Creating stack"
aws cloudformation create-stack \
--stack-name $1 \
--template -body file://$2 \
--parameters file://$3 \
--capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
--region=us-east-1
echo "Waiting for $1 stack to create ..."
aws cloudfromation wait stack-create-complete --stack-name $1
echo "$1 stack is create."