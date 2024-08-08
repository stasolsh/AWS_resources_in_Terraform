module "autoscaling" {
  source = "./modules/autoscaling"
}

# modules/autoscaling/main.tf

resource "aws_launch_configuration" "example" {
  name          = "example"
  image_id      = var.ami
  instance_type = var.instance_type

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "My Launch Configuration"
  }
}

resource "aws_autoscaling_group" "example" {
  desired_capacity     = 1
  max_size             = 1
  min_size             = 1
  launch_configuration = aws_launch_configuration.example.id
  vpc_zone_identifier  = module.network.public_subnet_ids

  tags = {
    Name = "My Auto Scaling Group"
  }
}
