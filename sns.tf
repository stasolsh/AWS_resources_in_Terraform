module "sns" {
  source = "./modules/sns"
}

# modules/sns/main.tf

resource "aws_sns_topic" "topic" {
  name = "my-topic"

  tags = {
    Name = "My Topic"
  }
}
