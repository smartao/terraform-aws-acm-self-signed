output "certificate_arn" {
  description = "The ARN of the imported ACM certificate"
  value       = aws_acm_certificate.self_signed.arn
}

output "certificate_domain" {
  description = "The Common Name (CN) used in the self-signed certificate"
  value       = var.common_name
}

output "certificate_validity_hours" {
  description = "The validity period of the certificate in hours"
  value       = var.validity_period_hours
}

output "private_key_pem" {
  description = "The private key used to generate the self-signed certificate (sensitive)"
  value       = tls_private_key.self_signed.private_key_pem
  sensitive   = true
}

output "certificate_pem" {
  description = "The self-signed certificate in PEM format"
  value       = tls_self_signed_cert.self_signed.cert_pem
  sensitive   = true
}
