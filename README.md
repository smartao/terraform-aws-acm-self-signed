# terraform-aws-acm-self-signed
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.self_signed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [tls_private_key.self_signed](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_self_signed_cert.self_signed](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/self_signed_cert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | The Common Name (CN) for the self-signed certificate (e.g., internal.app.local) | `string` | n/a | yes |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Common tags to be applied to all resources | `map(string)` | `{}` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment tag for resources | `string` | `""` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefix for naming resources | `string` | `""` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | The organization name for the certificate subject | `string` | `"Internal"` | no |
| <a name="input_validity_period_hours"></a> [validity\_period\_hours](#input\_validity\_period\_hours) | Number of hours the certificate remains valid | `number` | `8760` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | The ARN of the imported ACM certificate |
| <a name="output_certificate_domain"></a> [certificate\_domain](#output\_certificate\_domain) | The Common Name (CN) used in the self-signed certificate |
| <a name="output_certificate_pem"></a> [certificate\_pem](#output\_certificate\_pem) | The self-signed certificate in PEM format |
| <a name="output_certificate_validity_hours"></a> [certificate\_validity\_hours](#output\_certificate\_validity\_hours) | The validity period of the certificate in hours |
| <a name="output_private_key_pem"></a> [private\_key\_pem](#output\_private\_key\_pem) | The private key used to generate the self-signed certificate (sensitive) |
<!-- END_TF_DOCS -->