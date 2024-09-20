resource "aws_instance" "ec2" {
  for_each = var.ec2_ami

  ami                         = each.value.ami
  instance_type               = each.value.instance_type
  subnet_id                   = aws_subnet.subnet[each.value.subnet_key].id
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  key_name                    = aws_key_pair.key_pair.key_name
  associate_public_ip_address = each.value.associate_public_ip_address

  depends_on = [aws_security_group.allow_ssh, aws_key_pair.key_pair]

  tags = {
    Name = each.value.instance_name
  }
}
