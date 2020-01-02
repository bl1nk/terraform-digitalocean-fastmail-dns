# terraform-digitalocean-fastmail-dns

## Usage

``` hcl
module "fastmail" {
  source               = "github.com/bl1nk/terraform-digitalocean-fastmail-dns"
  domain               = "example.com"
  enable_autodiscovery = true
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| domain | Domain name to add records for. | string | n/a | yes |
| enable\_autodiscovery | Enables autodiscovery for smtp, imaps, pop3s, carddavs & caldavs. | string | `"0"` | no |

