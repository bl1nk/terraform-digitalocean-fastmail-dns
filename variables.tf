variable "domain" {
  description = "Domain name to add records for."
}

variable "enable_autodiscovery" {
  description = "Enables autodiscovery for smtp, imaps, pop3s, carddavs & caldavs."
  default     = 0
}

