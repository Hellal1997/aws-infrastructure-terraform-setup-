# Define the Public Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Public-Route-Table"
  }
}

# Associate Public Subnet with Public Route Table
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.subnet["public-subnet"].id
  route_table_id = aws_route_table.public.id
  depends_on     = [aws_route_table.public]
}

# Define the Private Route Table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main-vpc.id


  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "Private-Route-Table"
  }
}

# Associate Private Subnet with Private Route Table
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.subnet["private-subnet"].id
  route_table_id = aws_route_table.private.id
  depends_on     = [aws_route_table.private]
}
