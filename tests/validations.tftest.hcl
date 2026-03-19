run "invalid_common_name" {
  command = plan

  variables {
    common_name = ""
  }

  expect_failures = [
    var.common_name
  ]
}

run "invalid_validity_period" {
  command = plan

  variables {
    common_name           = "test.internal"
    validity_period_hours = 12 # Min is 24
  }

  expect_failures = [
    var.validity_period_hours
  ]
}
