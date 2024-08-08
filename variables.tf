variable "aws_region" {
  description = "The AWS region to deploy the infrastructure."
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  description = "List of public subnet CIDR blocks."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  description = "List of private subnet CIDR blocks."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the instance"
  default     = "ami-0c55b159cbfafe1f0"
}
