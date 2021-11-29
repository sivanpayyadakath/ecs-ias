output "alb_security_group_id" {
  value = aws_security_group.alb.id
}

output "default_alb_target_group" {
  value = aws_alb_target_group.default.arn
}

output "aws_alb_alb_dns_name" {
  value = aws_alb.alb.dns_name
}

output "aws_alb_alb_zone_id" {
  value = aws_alb.alb.zone_id
}
