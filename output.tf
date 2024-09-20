output "public-subnet" {
  value = aws_subnet.subnet["public-subnet"].id
}

output "private-subnet" {
  value = aws_subnet.subnet["private-subnet"].id
}