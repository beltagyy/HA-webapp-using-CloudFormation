#!/bin/bash

echo "Deleting stack..."
aws cloudformation delete-stack \
--stack-name $1 \
--region=us-east-1

echo "Waiting for $1 stack to delete..."
aws cloudformation wait stack-delete-complete --stack-name $1
echo "$1 stack is deleted."
