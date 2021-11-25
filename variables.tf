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

variable "azure_devops_configuration" {
  description = "Azure DevOps configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration"
  type        = map(string)
  default     = null
}

variable "integration_runtime_type" {
  description = "Specifies the integration runtime type. Possible values are `Azure`, `AzureSSIS` and `SelfHosted`"
  type        = string
  default     = null

  validation {
    condition     = var.integration_runtime_type == null || var.integration_runtime_type == "Azure" || var.integration_runtime_type == "SelfHosted" || var.integration_runtime_type == "AzureSSIS"
    error_message = "Possible values for `integration_runtime_type` variable are \"Azure\", \"AzureSSIS\" and \"SelfHosted\"."
  }
}

variable "integration_runtime_description" {
  description = "Integration runtime description"
  type        = string
  default     = null
}

variable "azure_ssis_integration_runtime_configuration" {
  description = <<EOF
  Map of configuration of azure ssis integration runtime:
    `node_size` (required)
    `number_of_nodes` (optional, defaults to 1)
    `max_parallel_executions_per_nodes` (optional, defaults to 1)
    `edition` (optional, defaults to Standard)
    `license_type` (optional, defaults to LicenseIncluded)
  EOF
  type        = map(any)
  default     = {}
}

variable "azure_integration_runtime_configuration" {
  description = <<EOF
    Map of configuration of azure integration runtime:
    `cleanup_enabled` (optional, defaults to true)
    `compute_type` (optional, defaults to General)
    `core_count` (optional, defaults to 8)
    `time_to_live_min` (optional, defaults to 0)
    `virtual_network_enabled` (optional, defaults to false)
  EOF
  type        = map(any)
  default     = {}
}

variable "is_production" {
  description = "True if environment is production"
  type        = bool
}