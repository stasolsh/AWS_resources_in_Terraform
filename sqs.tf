module "sqs" {
  source = "./modules/sqs"
}

# modules/sqs/main.tf

resource "aws_sqs_queue" "queue" {
  name = "my-queue"

  tags = {
    Name = "My Queue"
  }
}
