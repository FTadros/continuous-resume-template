provider "aws" {
  region = var.region
}

resource "aws_route53_zone" "zone" {
  name = var.domain
}

resource "aws_route53_record" "subdomain_record" {
  zone_id = aws_route53_zone.zone.zone_id
  name    = "${var.subdomain}.${var.domain}"
  type    = var.type
  ttl     = "300"
  records = ["${var.gh_username}.github.io"]
}

