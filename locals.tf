locals {
  self_hosted_integration_id = try(azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[0].id, null)
  azure_integration_id       = try(azurerm_data_factory_integration_runtime_azure.integration_runtime[0].id, null)
  azure_ssis_integration_id  = try(azurerm_data_factory_integration_runtime_azure_ssis.integration_runtime[0].id, null)

  self_hosted_integration_runtime_primary_auth_key   = try(azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[0].primary_authorization_key, null)
  self_hosted_integration_runtime_secondary_auth_key = try(azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[0].secondary_authorization_key, null)

  integration_runtime_id = try(coalesce(local.self_hosted_integration_id, local.azure_integration_id, local.azure_ssis_integration_id), null)
}
