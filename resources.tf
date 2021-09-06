resource "azurerm_data_factory" "main_data_factory" {
    name                = local.data_factory_name
    resource_group_name = var.resource_group_name
    location            = var.location

    tags = merge(local.default_tags, var.extra_tags)

    dynamic "github_configuration" {

    }

    dynamic "global_parameter" {

    }

    dynamic "identity" {

    }

    dynamic "vsts_configuration" {
        
    }


}