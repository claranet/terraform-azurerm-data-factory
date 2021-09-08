resource "azurerm_data_factory" "main_data_factory" {
  name                = local.data_factory_name
  resource_group_name = var.resource_group_name
  location            = var.location

  managed_virtual_network_enabled = var.managed_virtual_network_enabled
  public_network_enabled          = var.public_network_enabled

  dynamic "github_configuration" {
    for_each = [var.github_configuration]

    content {
      account_name    = lookup(github_configuration.value, "account_name", null)
      branch_name     = lookup(github_configuration.value, "branch_name", null)
      git_url         = lookup(github_configuration.value, "git_url", null)
      repository_name = lookup(github_configuration.value, "repository_name", null)
      root_folder     = lookup(github_configuration.value, "root_folder", null)
    }
  }

  dynamic "global_parameter" {
    for_each = var.global_parameter

    content {
      name  = lookup(global_parameter.value, "name", null)
      value = lookup(global_parameter.value, "value", null)
      type  = lookup(global_parameter.value, "type", null)
    }
  }

  identity {
    type = "SystemAssigned"
  }

  dynamic "vsts_configuration" {
    for_each = [var.vsts_configuration]

    content {
      account_name    = lookup(vsts_configuration.value, "account_name", null)
      branch_name     = lookup(vsts_configuration.value, "branch_name", null)
      project_name    = lookup(vsts_configuration.value, "project_name", null)
      repository_name = lookup(vsts_configuration.value, "repository_name", null)
      root_folder     = lookup(vsts_configuration.value, "root_folder", null)
      tenant_id       = lookup(vsts_configuration.value, "tenant_id", null)
    }
  }

  tags = merge(local.default_tags, var.extra_tags)
}