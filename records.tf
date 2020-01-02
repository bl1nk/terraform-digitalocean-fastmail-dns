resource "digitalocean_record" "mx" {
  count = 2

  domain   = var.domain
  name     = "@"
  priority = (count.index + 1) * 10
  type     = "MX"
  value    = "in${count.index + 1}-smtp.messagingengine.com."
}

resource "digitalocean_record" "mx-catchall" {
  count = 2

  domain   = var.domain
  name     = "*"
  priority = (count.index + 1) * 10
  type     = "MX"
  value    = "in${count.index + 1}-smtp.messagingengine.com."
}

resource "digitalocean_record" "txt-spf" {
  domain = var.domain
  type   = "TXT"
  name   = "@"
  value  = "v=spf1 include:spf.messagingengine.com ?all"
}

resource "digitalocean_record" "cname-dkim" {
  count = 3

  domain = var.domain
  name   = "fm${count.index + 1}._domainkey"
  type   = "CNAME"
  value  = "fm${count.index + 1}.${var.domain}.dkim.fmhosted.com."
}

