#!/bin/bash
environment="$1"
echo "--------------------------------------------------------"
echo "  RUNNING INFRA CODE FOR ENVIRONMENT: ${environment}    "  
echo "--------------------------------------------------------"
terraform init -input=false -no-color -backend=true -backend-config="params/${environment}/backend.tfvars" -reconfigure
terraform plan --input=false -out "tf-${environment}.plan" -var-file="params/${environment}/variables.tfvars" -no-color
terraform apply "tf-${environment}.plan"
terraform destroy --var-file="params/${environment}/variables.tfvars" -auto-approve