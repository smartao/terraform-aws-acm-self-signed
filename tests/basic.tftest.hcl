variables {
  common_name           = "test.internal.app"
  organization          = "Test Org"
  validity_period_hours = 48
  name_prefix           = "test"
  environment           = "test"
}

run "valid_config" {
  command = plan

  assert {
    condition     = aws_acm_certificate.self_signed.tags["Name"] == "test-self-signed-cert"
    error_message = "Certificate Name tag is incorrect"
  }

  assert {
    condition     = aws_acm_certificate.self_signed.tags["Environment"] == "test"
    error_message = "Certificate Environment tag is incorrect"
  }
}

run "outputs_match_inputs" {
  command = plan

  assert {
    condition     = output.certificate_domain == var.common_name
    error_message = "Output certificate_domain does not match input common_name"
  }

  assert {
    condition     = output.certificate_validity_hours == var.validity_period_hours
    error_message = "Output certificate_validity_hours does not match input validity_period_hours"
  }
}
