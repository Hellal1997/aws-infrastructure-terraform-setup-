# Define the Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main-vpc.id

  tags = {
    Name = "Internet-Gateway"
  }
}
