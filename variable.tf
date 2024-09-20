variable "ec2_ami" {
   description = "Configuration for the EC2 instances"
  type = map(map(string))
}
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "allow_ssh_from_cidr" {
  description = "CIDR block to allow SSH access"
  type        = string
}

variable "subnet_ec2" {
  description = "CIDR block for VPC and subnets"
  type = map(map(string))
}