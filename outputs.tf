output "data_factory_id" {
  description = "Data factory id"
  value       = azurerm_data_factory.main_data_factory.id
}

output "data_factory_name" {
  description = "Data factory name"
  value       = azurerm_data_factory.main_data_factory.name
}

output "data_factory_managed_identity" {
  description = "Type of managed identity"
  value       = azurerm_data_factory.main_data_factory.identity
}

output "data_factory_integration_runtime_id" {
  description = "Data factory integration runtime id"
  value       = local.integration_runtime_id
}

output "data_factory_integration_runtime_type" {
  description = "Data factory integration runtime type"
  value       = var.integration_runtime_type
}

output "data_factory_self_hosted_integration_runtime_primary_auth_key" {
  description = "The self hosted integration runtime primary authentication key"
  value       = local.self_hosted_integration_runtime_primary_auth_key
  sensitive   = true
}

output "data_factory_self_hosted_integration_runtime_secondary_auth_key" {
  description = "The self hosted integration runtime secondary authentication key"
  value       = local.self_hosted_integration_runtime_secondary_auth_key
  sensitive   = true
}