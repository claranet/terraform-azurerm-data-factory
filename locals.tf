locals {
  name_prefix       = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""
  data_factory_name = coalesce(var.custom_data_factory_name, lower(azurecaf_name.data_factory_name.result))

  default_tags = {
    env   = var.environment
    stack = var.stack
  }
}