resource "aws_subnet" "subnet" {
  for_each          = var.subnet_ec2
  vpc_id            = aws_vpc.main-vpc.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = each.key
  }
}