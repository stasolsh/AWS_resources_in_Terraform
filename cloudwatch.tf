# modules/cloudwatch/main.tf
resource "aws_cloudwatch_log_group" "my_log_group" {
  name              = "/aws/lambda/my_lambda_function"
  retention_in_days = 14
}