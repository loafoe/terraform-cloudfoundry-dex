# terraform-cloudfoundry-dex
Deploys a Dex instance to Cloud foundry

# License
[License](./LICENSE.md) is MIT

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_cloudfoundry"></a> [cloudfoundry](#requirement\_cloudfoundry) | >= 0.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudfoundry"></a> [cloudfoundry](#provider\_cloudfoundry) | 0.51.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudfoundry_app.dex](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/app) | resource |
| [cloudfoundry_route.dex](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/resources/route) | resource |
| [cloudfoundry_domain.domain](https://registry.terraform.io/providers/cloudfoundry-community/cloudfoundry/latest/docs/data-sources/domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cf_domain"></a> [cf\_domain](#input\_cf\_domain) | The CF domain name to use | `string` | n/a | yes |
| <a name="input_cf_space_id"></a> [cf\_space\_id](#input\_cf\_space\_id) | The CF Space to deploy in | `string` | n/a | yes |
| <a name="input_dex_image"></a> [dex\_image](#input\_dex\_image) | Caddy server image to use | `string` | `"ghcr.io/philips-forks/dex:v2.37.0-hsdp.3-alpine-cf"` | no |
| <a name="input_disk"></a> [disk](#input\_disk) | The amount of Disk space to allocate for Grafana Loki (MB) | `number` | `4096` | no |
| <a name="input_docker_password"></a> [docker\_password](#input\_docker\_password) | Docker registry password | `string` | `""` | no |
| <a name="input_docker_username"></a> [docker\_username](#input\_docker\_username) | Docker registry username | `string` | `""` | no |
| <a name="input_issuer"></a> [issuer](#input\_issuer) | Issuer | `string` | `""` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of RAM to allocate for Caddy (MB) | `number` | `1024` | no |
| <a name="input_name_postfix"></a> [name\_postfix](#input\_name\_postfix) | The postfix string to append to the hostname, prevents namespace clashes | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dex_endpoint"></a> [dex\_endpoint](#output\_dex\_endpoint) | The Caddy proxy endpoint |
<!-- END_TF_DOCS -->
