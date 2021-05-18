#! /bin/bash

# Create IAM user with
aws cloudformation create-stack --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --stack-name iam-stack --template-body file://iam-user-stack.yml

# Create an S3 bucket for the project
aws cloudformation update-stack --stack-name s3-stack --template-body file://s3-stack.yml

# Create cloud front stack
aws cloudformation create-stack --stack-name cloudfront-stack --template-body file://cloudfront.yml