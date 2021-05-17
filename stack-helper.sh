#! /bin/bash

# Create IAM user with
aws cloudformation create-stack --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --stack-name iam-stack --template-body file://iam-user-stack.yml