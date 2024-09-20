# Define the VPC
resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Terraform-VPC"
  }
}
