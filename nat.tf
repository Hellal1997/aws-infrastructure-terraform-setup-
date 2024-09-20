# Define the Elastic IP for the NAT Gateway
resource "aws_eip" "nat" {
  domain = "vpc"
}

# Define the NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.subnet["public-subnet"].id
  depends_on    = [aws_eip.nat]

  tags = {
    Name = "NAT-Gateway"
  }
}
