output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.network.private_subnet_ids
}

output "internet_gateway_id" {
  value = module.network.internet_gateway_id
}

output "route_table_id" {
  value = module.network.route_table_id
}

output "security_group_id" {
  value = module.network.security_group_id
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_instance_id" {
  value = module.rds.instance_id
}

output "s3_bucket_id" {
  value = module.s3.bucket_id
}

output "sqs_queue_id" {
  value = module.sqs.queue_id
}

output "sns_topic_id" {
  value = module.sns.topic_id
}

output "lambda_function_id" {
  value = module.lambda.function_id
}

output "iam_role_id" {
  value = module.iam.role_id
}

output "dynamodb_table_id" {
  value = module.dynamodb.table_id
}

output "cloudfront_distribution_id" {
  value = module.cloudfront.distribution_id
}

output "autoscaling_group_id" {
  value = module.autoscaling.group_id
}

output "loadbalancer_id" {
  value = module.loadbalancer.lb_id
}
