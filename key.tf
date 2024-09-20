resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Define the AWS Key Pair
resource "aws_key_pair" "key_pair" {
  key_name   = "my-new-key-pair"                 
  public_key = tls_private_key.private_key.public_key_openssh
}

resource "null_resource" "generate_key_file" {
  provisioner "local-exec" {
    command = "echo '${tls_private_key.private_key.private_key_pem}' > ~/.ssh/terraform.pem"
  }

    depends_on = [aws_key_pair.key_pair]
}