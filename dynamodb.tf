/*resource "aws_dynamodb_table" "dev_terraform_statefile_lock" {
  name     = var.dev_dynamodb_statelock
  hash_key = "LockID"

  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.dev_dynamodb_statelock
  }
}*/
