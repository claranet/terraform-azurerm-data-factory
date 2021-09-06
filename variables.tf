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
    description = "Name of the resource"
    type        = string
}

variable "github_configuration" {
    description = "Github configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration"
    type        = map(string)
    default     = {}
}

variable "global_parameter" {
    description = "Global parameters for data factory. See documentatin at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter"
    type        = any
    default     = {}
}

variable "identity" {
    description = "Identity for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#identity"
    type        = map(string)
    default     = {}
}

variable "vsts_configuration" {
    description = "Visual Studio Team Services configuration for data factory. See documenttation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration"
    type        = map(string)
    default     = {} 
}