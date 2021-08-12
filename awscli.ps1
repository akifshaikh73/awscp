aws ec2 describe-instances     --filters Name=instance-type,Values=m5.large
aws ec2 describe-instances   --filters instance-id,image-id                                                              
aws --profile pro-training ec2 describe-instances   --filters instance-id,image-id                                                              
aws --profile pro-training ec2 start-instances --instance-ids 0f9c579a9fd3e9e7f                                  
#aws --profile pro-training ec2 stop-instances --instance-ids i-0e87177fcbca4a836                                  
aws ec2 describe-instances \
    --query 'Reservations[*].Instances[*].{Instance:InstanceId,Subnet:SubnetId}' \
    --output json
aws ec2 describe-instances     --filters Name=instance-type,Values=t2.micro     --query Reservations[*].Instances[*].[InstanceId]     --output text

#aws --profile pro-training ec2 start-instances --instance-ids i-0e87177fcbca4a836                                 
#aws --profile pro-training ec2 stop-instances --instance-ids i-0e87177fcbca4a836                                  
