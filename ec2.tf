# modules/ec2/main.tf

resource "aws_instance" "example" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = element(module.network.public_subnet_ids, 0)
  security_groups = [module.network.security_group_id]

  tags = {
    Name = "example-instance"
  }
}
