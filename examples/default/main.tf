data "hsdp_config" "cf" {
  service = "cf"
}

module "dex" {
  source      = "../../"
  cf_domain   = data.hsdp_config.cf.domain
  cf_space_id = "test"

  issuer       = "https://dex.hostedzone.com"
  name_postfix = "test"
}
