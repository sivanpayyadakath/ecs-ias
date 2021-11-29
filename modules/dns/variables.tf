# variable "certificate_domain_name" {
#   type = string
# }

variable "hosted_zone_domain_name" {
  type = string
}

variable "subdomain_prefix" {
  type = string
}

variable "aws_alb_alb_dns_name" {
  type = string
}

variable "aws_alb_alb_zone_id" {
  type = string
}