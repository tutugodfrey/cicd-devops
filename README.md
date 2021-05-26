## UdaPeople

[![CircleCI](https://circleci.com/gh/tutugodfrey/cicd-devops.svg?style=svg)](https://circleci.com/gh/tutugodfrey/cicd-devops)

## Deployment Workflow Description

### Create an initial S3 bucket

This S3 bucket will be use as the initial origin for cloudfront distribution. When any deployment workflow is successful, a new a new
S3 bucket will be created and will be used to update the cloudfront origin.

First of all generate a random string or number to use as part of the bucketname
```bash
BucketID=568be999-1831-473c-9750-d7d4ccb70533
```
From the project root directory run the following command

```bash
aws cloudformation create-stack \
--stack-name udapeople-s3-stack \
--template-body file://cf-stacks/s3-stack.yml \
--parameters ParameterKey=BucketID,ParameterValue=$BucketID
```

### Create the Cloudfront Distribution

The cloudfront distribution created here will use the above S3 bucket as the initial origin. Subseqently, any successful deploy will replace the origin
with a new S3 bucket thus promoting our application from blue to green. The BucketID used above for the S3 bucket will be used here as well as shown below.

```bash
aws cloudformation create-stack \
--stack-name udapeople-cloud-front-stack \
--template-body file://cf-stacks/cloudfront.yml \
--parameters ParameterKey=ID,ParameterValue=$BucketID
```

From here .circleci/config.yml will take care of deploying the infrastructure and update the cloudfront destribution when the deployment is successful. If the deployment fails,
the resources created will be rollback.