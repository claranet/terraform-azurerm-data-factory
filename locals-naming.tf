locals {
  # Naming locals/constants
  name_prefix = lower(var.name_prefix)
  name_suffix = lower(var.name_suffix)

  data_factory_name = coalesce(var.custom_name, lower(azurecaf_name.data_factory_name.result))
}
