#!/bin/bash

#################
# Author  :Pushpa
# Date    :27th september
# version :v1
# This script will return the AWS resource usage for serivices  like
# AWS s3 , EC2 , Lambda , IAM Users
################
set -x
# list s3 buckets
aws s3 ls

# list EC2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list aws lambda
aws lambda list-functions

# list IAM users
aws iam list-users
