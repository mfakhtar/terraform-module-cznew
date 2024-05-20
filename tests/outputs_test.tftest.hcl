

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "cz_output_validation" {
  assert {
    condition     = output.cz == local.default_resource_tags
    error_message = "incorrect value for output.cz"
  }
}

run "czConfig_output_validation" {
  assert {
    condition     = output.czConfig == local.configPath
    error_message = "incorrect value for output.czConfig"
  }
}