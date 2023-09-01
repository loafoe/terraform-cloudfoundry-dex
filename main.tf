resource "cloudfoundry_app" "dex" {
  name         = "tf-dex-${var.name_postfix}"
  space        = var.cf_space_id
  memory       = 1024
  disk_quota   = 4096
  docker_image = var.dex_image
  docker_credentials = {
    username = var.docker_username
    password = var.docker_password
  }

  environment = merge({
    DEXCONFIG_BASE64 = base64encode(templatefile("${path.module}/templates/config.yaml", {
      issuer = var.issuer
    }))
  }, {})

  command           = "mkdir -p /etc/dex && echo $DEXCONFIG_BASE64 | base64 -d > /etc/dex/config.yaml && dex serve /etc/dex/config.yaml"
  health_check_type = "process"
  strategy          = "rolling"

  //noinspection HCLUnknownBlockType
  routes {
    route = cloudfoundry_route.dex.id
  }
}

resource "cloudfoundry_route" "dex" {
  domain   = data.cloudfoundry_domain.domain.id
  space    = var.cf_space_id
  hostname = "tf-dex-${var.name_postfix}"
}
