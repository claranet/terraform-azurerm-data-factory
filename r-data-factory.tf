resource "azurerm_data_factory" "main_data_factory" {
  name                = local.data_factory_name
  resource_group_name = var.resource_group_name
  location            = var.location

  managed_virtual_network_enabled = var.managed_virtual_network_enabled
  public_network_enabled          = var.public_network_enabled

  dynamic "github_configuration" {
    for_each = toset(var.github_configuration == null ? [] : [var.github_configuration])

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
    for_each = toset(var.azure_devops_configuration == null ? [] : [var.azure_devops_configuration])

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


resource "azurerm_data_factory_integration_runtime_azure" "integration_runtime" {
  count = var.integration_runtime_type == "Azure" ? 1 : 0

  data_factory_id = azurerm_data_factory.main_data_factory.id
  name            = var.integration_runtime_custom_name
  location        = var.location
  description     = var.integration_runtime_description

  cleanup_enabled         = lookup(var.integration_runtime_configuration, "cleanup_enabled", null)
  compute_type            = lookup(var.integration_runtime_configuration, "compute_type", "General")
  core_count              = lookup(var.integration_runtime_configuration, "core_count", 8)
  time_to_live_min        = lookup(var.integration_runtime_configuration, "time_to_live_min", 0)
  virtual_network_enabled = lookup(var.integration_runtime_configuration, "virtual_network_enabled", false)
}

resource "azurerm_data_factory_integration_runtime_self_hosted" "integration_runtime" {
  count = var.integration_runtime_type == "SelfHosted" ? 1 : 0

  data_factory_id = azurerm_data_factory.main_data_factory.id
  name            = var.integration_runtime_custom_name
  description     = var.integration_runtime_description
}

resource "azurerm_data_factory_integration_runtime_azure_ssis" "integration_runtime" {
  count = var.integration_runtime_type == "AzureSSIS" ? 1 : 0

  data_factory_id = azurerm_data_factory.main_data_factory.id
  name            = var.integration_runtime_custom_name
  location        = var.location
  description     = var.integration_runtime_description

  node_size                        = lookup(var.integration_runtime_configuration, "node_size", null)
  number_of_nodes                  = lookup(var.integration_runtime_configuration, "number_of_nodes", 1)
  max_parallel_executions_per_node = lookup(var.integration_runtime_configuration, "max_parallel_executions_per_node", 1)
  edition                          = lookup(var.integration_runtime_configuration, "edition", "Standard")
  license_type                     = lookup(var.integration_runtime_configuration, "license_type", "LicenseIncluded")
}
