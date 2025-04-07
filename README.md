🌐 Terraform VPC Project
This project automates the creation of a secure and scalable AWS VPC (Virtual Private Cloud) using Terraform. It supports environment-specific configurations (e.g., dev, stage, prod) using Terraform Workspaces and modular infrastructure.

📁 Project Structure
bash
Copy
Edit
terraform-vpc/
│
├── main.tf                  # Root Terraform configuration
├── variables.tf             # Input variables
├── outputs.tf               # Output values
├── terraform.tfvars         # Environment-specific values (optional)
├── .gitignore               # Excludes unnecessary files
└── modules/
    └── networking/
        ├── main.tf          # VPC, subnets, IGW, route tables, etc.
        ├── variables.tf     # Module input variables
        └── outputs.tf       # Module output values
🚀 What This Terraform Project Does
📦 Creates a VPC with a customizable CIDR block

🌍 Creates public and private subnets across multiple Availability Zones (AZs)

🌐 Attaches an Internet Gateway for public subnet access

🔄 Creates route tables and associates them with subnets

🔒 Private subnets are isolated (by default)

💡 Tags all resources with the environment (based on the workspace)

🧩 Input Variables
aws_region – AWS region to deploy the infrastructure (e.g., us-east-1)

env – Environment name (dev, stage, prod, etc.)

vpc_cidr – CIDR block for the VPC (e.g., 10.0.0.0/16)

public_subnet_count – Number of public subnets to create

private_subnet_count – Number of private subnets to create

azs – List of Availability Zones (e.g., ["us-east-1a", "us-east-1b"])

🛠️ How to Use
1. Initialize Terraform
bash
Copy
Edit
terraform init
2. Create a Workspace (for your environment)
bash
Copy
Edit
terraform workspace new dev
# or
terraform workspace select dev
3. Plan the Infrastructure
bash
Copy
Edit
terraform plan
4. Apply the Changes
bash
Copy
Edit
terraform apply
📤 Outputs
Once applied, the following values are output:

VPC ID

Public subnet IDs

Private subnet IDs

These outputs can be used as references for other modules or resources.
