# data "aws_acm_certificate" "global" {
#   provider = aws.global

#   domain = var.certificate_domain_name
# }

# data "aws_acm_certificate" "regional" {
#   domain = var.certificate_domain_name
# }

# resource "aws_route53_zone" "main" {
#   name    = var.hosted_zone_domain_name
#   comment = var.hosted_zone_domain_name
# }

//TODO: add zone ID
data "aws_route53_zone" "main" {
  # name         = var.hosted_zone_domain_name
  zone_id = "XXXXX"
  private_zone = true
}

locals {
  aws_route53_record-app-origin-name = "${var.subdomain_prefix}.${var.hosted_zone_domain_name}"
}

# resource "aws_route53_record" "main" {
#   zone_id = aws_route53_zone.main.zone_id
#   name    = local.aws_route53_record-app-origin-name
#   type    = "A"

#   alias {
#     name                   = var.aws_alb_alb_dns_name
#     zone_id                = var.aws_alb_alb_zone_id
#     evaluate_target_health = true
#   }
# }

resource "aws_route53_record" "main" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = local.aws_route53_record-app-origin-name
  type    = "A"

  alias {
    name                   = var.aws_alb_alb_dns_name
    zone_id                = var.aws_alb_alb_zone_id
    evaluate_target_health = true
  }
}