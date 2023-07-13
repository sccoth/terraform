resource "aws_route53_zone" "genesis-challenge" {
  name = "genesis.challenge"
}

resource "aws_route53_record" "server1-record" {
  zone_id = aws_route53_zone.genesis-challenge.zone_id
  name    = "app-server.genesis.challenge"
  type    = "A"
  ttl     = "300"
  records = ["52.211.128.7"]
}

resource "aws_route53_record" "www-record" {
  zone_id = aws_route53_zone.genesis-challenge.zone_id
  name    = "www.genesis.challenge"
  type    = "A"
  ttl     = "300"
  records = ["52.211.128.7"]
}

output "ns-servers" {
  value = aws_route53_zone.genesis-challenge.name_servers
}

