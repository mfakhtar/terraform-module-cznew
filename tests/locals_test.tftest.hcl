

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "default_resource_tags_validation" {
  assert {
    condition     = local.default_resource_tags.moduleVersion == join(" ", ["pcs-module-name", jsondecode(file("${path.module}/.cz.json")).commitizen.version])
    error_message = "incorrect value for default_resource_tags.moduleVersion"
  }
}

run "null_resource_validation" {
  assert {
    condition     = null_resource.null_fromprivate_registry != null
    error_message = "null_resource.null_fromprivate_registry should exist"
  }
}