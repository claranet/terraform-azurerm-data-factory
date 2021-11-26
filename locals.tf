locals {
  default_tags = {
    env   = var.environment
    stack = var.stack
  }

  self_hosted_integration_id = var.integration_runtime_type == "SelfHosted" ? azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[0].id : null
  azure_integration_id       = var.integration_runtime_type == "Azure" ? azurerm_data_factory_integration_runtime_azure.integration_runtime[0].id : null
  azure_ssis_integration_id  = var.integration_runtime_type == "AzureSSIS" ? azurerm_data_factory_integration_runtime_azure_ssis.integration_runtime[0].id : null

  integration_runtime_id = coalesce(local.self_hosted_integration_id, local.azure_integration_id, local.azure_ssis_integration_id, "null")

  data_factory_self_hosted_integration_runtime_primary_auth_key   = var.integration_runtime_type == "SelfHosted" ? azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[0].auth_key_1 : null
  data_factory_self_hosted_integration_runtime_secondary_auth_key = var.integration_runtime_type == "SelfHosted" ? azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[0].auth_key_2 : null
}
