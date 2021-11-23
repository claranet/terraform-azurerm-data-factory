locals {
  data_factory_name = coalesce(var.custom_data_factory_name, lower(azurecaf_name.data_factory_name.result))

  default_tags = {
    env   = var.environment
    stack = var.stack
  }
}