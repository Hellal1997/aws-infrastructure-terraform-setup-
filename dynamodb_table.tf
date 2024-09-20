resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"                                                         #The primary key used for locking
  billing_mode  = "PROVISIONED"                                                
  read_capacity = 1                                                           #provisioned throughput for the table
  write_capacity = 1                                                          #provisioned throughput for the table
 
  attribute {
    name = "LockID"
    type = "S"                                                                #string
  }

   tags = {
    Name = "dynamodb-terraform-state-lock"
}
}
