
# Terraform Lab: Basic Network Infrastructure on AWS

## Lab Objective

The goal of this lab is to create a basic network infrastructure on AWS using Terraform. This includes setting up a VPC, subnets, an Internet Gateway (IGW), a NAT Gateway, route tables, and security groups. Additionally, you will configure Terraform to use an S3 bucket for state management and optionally create an SSH key pair (PEM file) for secure access.

## Lab Tasks

### 1. S3 Backend Configuration
- **Objective:** Configure Terraform to store its state in an S3 bucket and use DynamoDB for state locking.
- **Details:** Ensure that Terraform's state is managed using an S3 bucket and that DynamoDB is used to prevent concurrent state changes.

### 2. VPC Creation
- **Objective:** Create a VPC with a specified CIDR block (e.g., `10.0.0.0/16`).
- **Details:** Define the VPC configuration including the CIDR block and any necessary tags.

### 3. Subnets
- **Objective:** Create one public subnet and one private subnet within the VPC.
- **Details:** Ensure that the subnets are correctly associated with the VPC and have appropriate CIDR blocks.

### 4. Internet Gateway (IGW)
- **Objective:** Attach an Internet Gateway to the VPC.
- **Details:** Update the route table for the public subnet to direct traffic to the Internet Gateway, enabling internet access.

### 5. NAT Gateway
- **Objective:** Create a NAT Gateway in the public subnet.
- **Details:** Update the route table for the private subnet to route traffic through the NAT Gateway, allowing private subnet instances to access the internet.

### 6. Security Groups (SG)
- **Objective:** Create a security group that allows SSH access (port 22) from any IP.
- **Details:** Configure the security group rules to permit inbound SSH traffic and secure access to resources.

### 7. PEM File
- **Objective:** Optionally create an SSH key pair (PEM file) using Terraform and store it securely.
- **Details:** If opted, configure Terraform to generate an SSH key pair and handle it appropriately.



## Getting Started

### Prerequisites
- Terraform
- An AWS account with appropriate permissions to create and manage VPCs, subnets, and other network components.

### Setup Instructions
1. Clone this repository to your local machine:
 ```bash
git clone https://github.com/mohamedesmael10/aws-infrastructure-terraform-setup.git
   
cd aws-infrastructure-terraform-setup
   ```
2. Configure your Terraform backend by editing backend.tf with your S3 bucket and DynamoDB table details.

3. Initialize Terraform:
 ```bash
terraform init
```
4. Review the Terraform plan:
```bash
terraform plan
```
5. Apply the Terraform configuration:
```bash
terraform apply
```
6. Verify the creation of resources in the AWS Console.



