#terraform {
#  backend "s3" {
#    encrypt = true    
#    bucket = "esmael-bucket"
#    dynamodb_table = "dynamodb-terraform-state-lock"
#    key    = "terraform.tfstate"
#    region = "us-east-1"
#  }
#}