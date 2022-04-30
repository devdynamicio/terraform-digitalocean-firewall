# Digitalocean Firewall Terraform module

Terraform Module for create [DigitalOcean Firewall](https://docs.digitalocean.com/products/networking/firewalls/) resources.

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

## Requirements

This module requires Terraform version `0.13.0` or newer.

## Examples

```hcl
module "kubernetes" {
  source             = "../../"
  name            = "firewall-example"
  allowed_ip      = ["0.0.0.0/0"]
  allowed_ports   = [22, 80]
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.19.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_firewall.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_ip"></a> [allowed\_ip](#input\_allowed\_ip) | List of allowed ip. | `list(any)` | `[]` | no |
| <a name="input_allowed_ports"></a> [allowed\_ports](#input\_allowed\_ports) | List of allowed ingress ports. | `list(any)` | `[]` | no |
| <a name="input_droplet_ids"></a> [droplet\_ids](#input\_droplet\_ids) | The list of the IDs of the Droplets assigned to the Firewall. | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The Firewall name | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | The type of traffic to be allowed. This may be one of tcp, udp or icmp. | `string` | `"tcp"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The names of the Tags assigned to the Firewall. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | A unique ID that can be used to identify and reference a Firewall. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Firewall. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
