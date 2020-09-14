aws sso login --profile <profilename>
echo "######## LISTING EC2 INSTANCES################"

for region in `aws ec2 describe-regions --all-regions --query "Regions[].{Name:RegionName}" --output text --profile <profilename>`
do
     echo -e "\nListing Instances in region:'$region'..."
#aws ec2 describe-instances --region $region
aws ec2 describe-instances --region $region  --query 'Reservations[*].Instances[*].[Placement.AvailabilityZone, State.Name, InstanceId]' --output text --profile <profilename> | grep -E '(running|pending)'
done

echo "######## END OF LISTING EC2 INSTANCES##########"

echo "####### LISTING RDS INSTANCES##################"

for region in `aws ec2 describe-regions --all-regions --query "Regions[].{Name:RegionName}" --output text --profile <profilename>`
do
     echo -e "\nListing Instances in region:'$region'..."
aws rds describe-db-instances --region $region --profile <profilename>
#aws ec2 describe-instances --region $region
done

echo "####### END OF LISTING RDS INSTANCES###########"

