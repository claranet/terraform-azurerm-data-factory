variable "managed_virtual_network_enabled" {
  description = "True to enable managed virtual network."
  type        = bool
  default     = true
}

variable "public_network_enabled" {
  description = "True to make data factory visible to the public network."
  type        = bool
  default     = false
}

variable "github_configuration" {
  description = "Github configuration for data factory. For arguments, please refer to [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration)."
  type        = map(string)
  default     = null
}

variable "global_parameters" {
  description = "Global parameters for data factory. For arguments, please refer to [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter)."
  type        = list(map(string))
  default     = []
}

variable "azure_devops_configuration" {
  description = "Azure DevOps configuration for data factory. For arguments, please refer to [documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration)."
  type        = map(string)
  default     = null
}

variable "integration_runtime_type" {
  description = "Specifies the integration runtime type. Possible values are `Azure`, `AzureSSIS` and `SelfHosted`."
  type        = string
  default     = null

  validation {
    condition     = contains(["Azure", "SelfHosted", "AzureSSIS", null], var.integration_runtime_type)
    error_message = "Possible values for `integration_runtime_type` variable are \"Azure\", \"AzureSSIS\" and \"SelfHosted\"."
  }
}

variable "integration_runtime_description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}

variable "integration_runtime_configuration" {
  description = <<EOF
  Parameters used to configure `AzureSSIS` integration runtime:
    `node_size` (optional, defaults to `Standard_D2_v3`)
    `number_of_nodes` (optional, defaults to `1`)
    `max_parallel_executions_per_nodes` (optional, defaults to `1`)
    `edition` (optional, defaults to `Standard`)
    `license_type` (optional, defaults to `LicenseIncluded`)
  Parameters used to configure `Azure` integration runtime
    `cleanup_enabled` (optional, defaults to `true`)
    `compute_type` (optional, defaults to `General`)
    `core_count` (optional, defaults to `8`)
    `time_to_live_min` (optional, defaults to `0`)
    `virtual_network_enabled` (optional, defaults to `false`)
  EOF
  type        = map(any)
  default     = {}
}

# Identity

variable "identity_type" {
  description = "Specifies the type of Managed Service Identity that should be configured on this Data Factory. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both)."
  type        = string
  default     = "SystemAssigned"
}

variable "identity_ids" {
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Data Factory."
  type        = list(string)
  default     = null
}
