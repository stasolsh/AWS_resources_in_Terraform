# modules/ecrrepository/main.tf
resource "aws_ecr_repository" "my_repository" {
  name = "my-ecr-repository"
}