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