#! /bin/bash

resource_suffix=$1

aws s3 rm s3://udapeople-$resource_suffix --recursive
aws cloudformation delete-stack --stack-name back-end-stack-$resource_suffix
aws cloudformation delete-stack --stack-name front-end-stack-$resource_suffix

