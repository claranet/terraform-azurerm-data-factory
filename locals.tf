locals {
  self_hosted_integration_id = one(azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[*].id)
  azure_integration_id       = one(azurerm_data_factory_integration_runtime_azure.integration_runtime[*].id)
  azure_ssis_integration_id  = one(azurerm_data_factory_integration_runtime_azure_ssis.integration_runtime[*].id)

  integration_runtime_id = try(coalesce(local.self_hosted_integration_id, local.azure_integration_id, local.azure_ssis_integration_id), null)
}
