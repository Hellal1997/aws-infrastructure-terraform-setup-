resource "aws_s3_bucket" "state" {
  bucket = "esmael-bucket"

  tags = {
    Name        = "My state bucket"
    
  }
}

resource "aws_s3_bucket_versioning" "terraform_state_bucket" {
  bucket = aws_s3_bucket.state.id

  versioning_configuration {
    status = "Enabled"
  }
}

