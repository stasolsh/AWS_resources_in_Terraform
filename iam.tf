module "iam" {
  source = "./modules/iam"
}

# modules/iam/main.tf

resource "aws_iam_role" "role" {
  name = "my_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name = "My Role"
  }
}
