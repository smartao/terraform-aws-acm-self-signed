# Simple Example

This example demonstrates how to create a self-signed AWS Certificate Manager (ACM) certificate using this module with minimal configuration. This is ideal for internal development or testing environments where a private CA is not available.

## Usage

```hcl
module "acm_self_signed" {
  source = "../../"

  common_name           = "internal.example.local"
  organization          = "Example Corp"
  validity_period_hours = 8760
  name_prefix           = "simple-example"
  environment           = "dev"

  common_tags = {
    Project     = "Terraform Module Example"
    Environment = "dev"
  }
}
```

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

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_acm_self_signed"></a> [acm\_self\_signed](#module\_acm\_self\_signed) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | The ARN of the generated ACM self-signed certificate |
| <a name="output_certificate_domain"></a> [certificate\_domain](#output\_certificate\_domain) | The Common Name (CN) used in the self-signed certificate |
| <a name="output_certificate_validity_hours"></a> [certificate\_validity\_hours](#output\_certificate\_validity\_hours) | The validity period of the certificate in hours |
<!-- END_TF_DOCS -->
