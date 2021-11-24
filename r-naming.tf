resource "azurecaf_name" "data_factory_name" {
  name          = var.stack
  resource_type = "azurerm_data_factory"
  prefixes      = var.name_prefix == "" ? null : [local.name_prefix]
  suffixes      = compact([var.client_name, var.location_short, var.environment, local.name_suffix, var.use_caf_naming ? "" : "df"])
  use_slug      = var.use_caf_naming
  clean_input   = true
  separator     = "-"
}
