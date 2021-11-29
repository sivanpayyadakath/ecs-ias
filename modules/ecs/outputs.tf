output "default_alb_target_group" {
  value = module.alb.default_alb_target_group
}

output "aws_alb_alb_dns_name" {
  value = module.alb.aws_alb_alb_dns_name
}

output "aws_alb_alb_zone_id" {
  value = module.alb.aws_alb_alb_zone_id
}
