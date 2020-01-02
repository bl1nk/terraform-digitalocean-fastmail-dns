resource "digitalocean_record" "srv-auto-smtp" {
  count = var.enable_autodiscovery ? 1 : 0

  domain   = var.domain
  name     = "_submission._tcp"
  port     = "587"
  priority = "0"
  type     = "SRV"
  value    = "smtp.fastmail.com."
  weight   = "1"
}

resource "digitalocean_record" "srv-auto-imaps" {
  count = var.enable_autodiscovery ? 1 : 0

  domain   = var.domain
  name     = "_imaps._tcp"
  port     = "993"
  priority = "0"
  type     = "SRV"
  value    = "imap.fastmail.com."
  weight   = "1"
}

resource "digitalocean_record" "srv-auto-pop3s" {
  count = var.enable_autodiscovery ? 1 : 0

  domain   = var.domain
  name     = "_pop3s._tcp"
  port     = "995"
  priority = "0"
  type     = "SRV"
  value    = "pop.fastmail.com."
  weight   = "1"
}

resource "digitalocean_record" "srv-auto-carddavs" {
  count = var.enable_autodiscovery ? 1 : 0

  domain   = var.domain
  name     = "_carddavs._tcp"
  port     = "443"
  priority = "0"
  type     = "SRV"
  value    = "carddav.fastmail.com."
  weight   = "1"
}

resource "digitalocean_record" "srv-auto-caldavs" {
  count = var.enable_autodiscovery ? 1 : 0

  domain   = var.domain
  name     = "_caldavs._tcp"
  port     = "443"
  priority = "0"
  type     = "SRV"
  value    = "caldav.fastmail.com."
  weight   = "1"
}

