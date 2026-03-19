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
