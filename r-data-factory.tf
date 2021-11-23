resource "azurerm_data_factory" "main_data_factory" {
  name                = local.data_factory_name
  resource_group_name = var.resource_group_name
  location            = var.location

  managed_virtual_network_enabled = var.managed_virtual_network_enabled
  public_network_enabled          = var.public_network_enabled

  dynamic "github_configuration" {
    for_each = var.github_configuration == null ? [] : ["_"]

    content {
      account_name    = github_configuration.value.account_name
      branch_name     = github_configuration.value.branch_name
      git_url         = github_configuration.value.git_url
      repository_name = github_configuration.value.repository_name
      root_folder     = github_configuration.value.root_folder
    }
  }

  dynamic "global_parameter" {
    for_each = var.global_parameters

    content {
      name  = global_parameter.value.name
      value = global_parameter.value.value
      type  = global_parameter.value.type
    }
  }

  identity {
    type = "SystemAssigned"
  }

  dynamic "vsts_configuration" {
    for_each = var.vsts_configuration == null ? [] : ["_"]

    content {
      account_name    = vsts_configuration.value.account_name
      branch_name     = vsts_configuration.value.branch_name
      project_name    = vsts_configuration.value.project_name
      repository_name = vsts_configuration.value.repository_name
      root_folder     = vsts_configuration.value.root_folder
      tenant_id       = vsts_configuration.value.tenant_id
    }
  }

  tags = merge(local.default_tags, var.extra_tags)
}
