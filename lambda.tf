module "lambda" {
  source = "./modules/lambda"
}

# modules/lambda/main.tf

resource "aws_lambda_function" "function" {
  filename         = "lambda_function_payload.zip"
  function_name    = "my_lambda_function"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "exports.handler"
  runtime          = "nodejs12.x"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  tags = {
    Name = "My Lambda Function"
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name = "IAM for Lambda"
  }
}
