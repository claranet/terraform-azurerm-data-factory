output "resource" {
  description = "Data factory resource object."
  value       = azurerm_data_factory.main
}

output "id" {
  description = "Data factory id."
  value       = azurerm_data_factory.main.id
}

output "name" {
  description = "Data factory name."
  value       = azurerm_data_factory.main.name
}

output "managed_identity" {
  description = "Type of managed identity."
  value       = azurerm_data_factory.main.identity
}

output "integration_runtime" {
  description = "Data factory integration runtime resource object."
  value       = azurerm_data_factory_integration_runtime_self_hosted.integration_runtime
}

output "integration_runtime_id" {
  description = "Data factory integration runtime id."
  value       = local.integration_runtime_id
}

output "integration_runtime_type" {
  description = "Data factory integration runtime type."
  value       = var.integration_runtime_type
}

output "self_hosted_integration_runtime_primary_authorization_key" {
  description = "The self hosted integration runtime primary authentication key."
  value       = one(azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[*].primary_authorization_key)
  sensitive   = true
}

output "self_hosted_integration_runtime_secondary_authorization_key" {
  description = "The self hosted integration runtime secondary authentication key."
  value       = one(azurerm_data_factory_integration_runtime_self_hosted.integration_runtime[*].secondary_authorization_key)
  sensitive   = true
}
