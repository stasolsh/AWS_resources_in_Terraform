# modules/dynamodb/main.tf

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "basic-dynamodb-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  stream_enabled = true
  stream_view_type = "NEW_IMAGE"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "My DynamoDB Table"
    Environment = "Dev"
  }
}
