# modules/route53/main.tf
resource "aws_route53_zone" "my_zone" {
  name = "example.com"
}

resource "aws_route53_record" "my_record" {
  zone_id = aws_route53_zone.my_zone.id
  name    = "www"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.public_ip]
}