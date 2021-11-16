variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "environment" {
  description = "Project environment"
  type        = string
}

variable "stack" {
  description = "Project stack name"
  type        = string
}

variable "location" {
  description = "Azure region to use"
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location"
  type        = string
}

variable "client_name" {
  description = "Client name/account used in naming"
  type        = string
}

variable "extra_tags" {
  description = "Extra tags to add"
  type        = map(string)
  default     = {}
}

variable "custom_data_factory_name" {
  description = "Custom name of the Data Factory"
  type        = string
  default     = null
}

variable "managed_virtual_network_enabled" {
  description = "True to enable managed virtual network"
  type        = bool
  default     = true
}

variable "public_network_enabled" {
  description = "True to make data factory visible to the public network"
  type        = bool
  default     = true
}

variable "github_configuration" {
  description = "Github configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration"
  type        = map(string)
  default     = null
}

variable "global_parameters" {
  description = "Global parameters for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter"
  type        = list(map(string))
  default     = []
}

variable "vsts_configuration" {
  description = "Azure DevOps configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration"
  type        = map(string)
  default     = null
}

# LOGS

variable "logs_destinations_ids" {
  description = "List of destination resources Ids for logs diagnostics destination. Can be Storage Account, Log Analytics Workspace and Event Hub. No more than one of each can be set. Empty list to disable logging."
  type        = list(string)
}

variable "logs_categories" {
  description = "Log categories to send to destinations."
  type        = list(string)
  default     = null
}

variable "logs_metrics_categories" {
  description = "Metrics categories to send to destinations."
  type        = list(string)
  default     = null
}

variable "logs_retention_days" {
  description = "Number of days to keep logs on storage account"
  type        = number
  default     = 30
}
