provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./network.tf"
}

module "ec2" {
  source = "./ec2.tf"
}

module "rds" {
  source = "./rds.tf"
}

module "s3" {
  source = "./s3.tf"
}

module "sqs" {
  source = "./sqs.tf"
}

module "sns" {
  source = "./sns.tf"
}

module "lambda" {
  source = "./lambda.tf"
}

module "iam" {
  source = "./iam.tf"
}

module "dynamodb" {
  source = "./dynamodb.tf"
}

module "cloudfront" {
  source = "./cloudfront.tf"
}

module "autoscaling" {
  source = "./autoscaling.tf"
}

module "loadbalancer" {
  source = "./loadbalancer.tf"
}

module "vpc" {
  source = "./vpc.tf"
}

module "cloudwatch" {
  source = "./cloudwatch.tf"
}

module "ecrrepository" {
  source = "./ecrrepository.tf"
}

module "route53" {
  source = "./route53.tf"
}
