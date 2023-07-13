# Configure AWS access keys
The default credentials file
Set credentials in the AWS credentials profile file on your local system, located at:
~/.aws/credentials on Linux, macOS, or Unix
C:\Users\USERNAME\.aws\credentials on Windows
[default]
aws_access_key_id = <your_access_key_id>
aws_secret_access_key = <your_secret_access_key>
# Initialize the directory
terraform init
# Validate the changes
terraform plan
# Deploy the changes
terraform apply
# Remove the resources created
terraform destroy
