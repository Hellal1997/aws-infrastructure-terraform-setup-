vpc_cidr              = "10.0.0.0/16"
ec2_ami = {
  public1 = {
    ami                         = "ami-0e86e20dae9224db8"
    instance_type               = "t2.micro"
    instance_name               = "public1"
    associate_public_ip_address = true
    subnet_key                  = "public-subnet"
  }
 
  
  private1 = {
    ami                         = "ami-0e86e20dae9224db8"
    instance_type               = "t2.micro"
    instance_name               = "private1"
    associate_public_ip_address = false
    subnet_key                  = "private-subnet"
 
}
}

subnet_ec2 = {
  public-subnet = {
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-east-1a"
  }
  private-subnet = {
    cidr_block        = "10.0.2.0/24"
    availability_zone = "us-east-1a"
  }
}

allow_ssh_from_cidr   = "0.0.0.0/0"  # Allows SSH from any IP address
