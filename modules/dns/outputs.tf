# output "aws_acm_certificate-global-arn" {
#   value = data.aws_acm_certificate.global.arn
# }

output "aws_acm_certificate_regional_arn" {
  value = data.aws_acm_certificate.regional.arn
}

# output "aws_route53_zone-main-name" {
#   value = aws_route53_zone.main.name
# }

# output "aws_route53_zone-main-zone_id" {
#   value = aws_route53_zone.main.zone_id
# }
