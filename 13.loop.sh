#!/bin/bash

aws ec2 run-instances \
    --image-id ami-0220d79f3f480ecf5 \
    --instance-type t3.micro \
    --security-groups roboshop-common \ #security group name istunna so we have to use (--security-groups) if we are giving ids --security-group-ids
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Install-Server}]' 
    --query "Instances[0].InstanceId" \ ###search in google - aws cli to launch instance and get instance id
    --output text