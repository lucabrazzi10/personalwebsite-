#!/bin/bash

# Check if the AWS CLI is installed
if ! [ -x "$(command -v aws)" ]; then
  echo 'Error: AWS CLI is not installed.' >&2
  exit 1
fi

# Set the region
region="us-east-1"

# Set the name of the EC2 key pair
key_pair_name="demokey"

# Set the name of the security group
security_group_name="my-security-group"

# Set the name of the EC2 instance
instance_name="ec2 from cli"

# Set the ID of the Amazon Machine Image (AMI) to use for the instance
ami="ami-0d5d9d301c853a04a"

# Set the instance type
instance_type="t2.micro"

# Create the EC2 key pair
aws ec2 create-key-pair --key-name "$key_pair_name" --query 'KeyMaterial' --output text > "$demokey.pem"

# Create a security group
aws ec2 create-security-group --group-name "$security_group_name" --description "My security group"

# Add a rule to the security group to allow SSH traffic
aws ec2 authorize-security-group-ingress --group-name "$security_group_name" --protocol tcp --port 22 --cidr 0.0.0.0/0

# Create the EC2 instance
aws ec2 run-instances --image-id "$ami" --instance-type "$instance_type" --key-name "$key_pair_name" --security-group-ids "$security_group_name" --region "$region" --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value="'$instance_name'"}]'

echo "EC2 instance '$instance_name' created successfully!"
