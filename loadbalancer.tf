# modules/loadbalancer/main.tf

resource "aws_lb" "lb" {
  name               = "my-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [module.network.security_group_id]
  subnets            = module.network.public_subnet_ids

  tags = {
    Name = "My Load Balancer"
  }
}

resource "aws_lb_target_group" "tg" {
  name     = "my-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.network.vpc_id

  tags = {
    Name = "My Target Group"
  }
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }

  tags = {
    Name = "My Listener"
  }
}
