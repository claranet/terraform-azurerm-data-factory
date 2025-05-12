output "resource" {
  description = "Data Factory resource object."
  value       = azurerm_data_factory.main
}

output "id" {
  description = "Data Factory id."
  value       = azurerm_data_factory.main.id
}

output "name" {
  description = "Data Factory name."
  value       = azurerm_data_factory.main.name
}

output "identity_principal_id" {
  description = "Data Factory system identity principal ID."
  value       = try(azurerm_data_factory.main.identity[0], null)


output "integration_runtime" {
  description = "Data Factory integration runtime resource object."
  value       = azurerm_data_factory_integration_runtime_self_hosted.integration_runtime
}

output "integration_runtime_id" {
  description = "Data Factory integration runtime id."
  value       = local.integration_runtime_id
}

output "integration_runtime_type" {
  description = "Data Factory integration runtime type."
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
