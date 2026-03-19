output "certificate_arn" {
  description = "The ARN of the generated ACM self-signed certificate"
  value       = module.acm_self_signed.certificate_arn
}

output "certificate_domain" {
  description = "The Common Name (CN) used in the self-signed certificate"
  value       = module.acm_self_signed.certificate_domain
}

output "certificate_validity_hours" {
  description = "The validity period of the certificate in hours"
  value       = module.acm_self_signed.certificate_validity_hours
}
