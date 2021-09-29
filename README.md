# Azure Data Factory

This module creates an Azure Data Factory with diagnostic settings enabled.

<!-- BEGIN_TF_DOCS -->
## Global versioning rule for Claranet Azure modules

| Module version | Terraform version | AzureRM version |
| -------------- | ----------------- | --------------- |
| >= 5.x.x       | 0.15.x & 1.0.x    | >= 2.0          |
| >= 4.x.x       | 0.13.x            | >= 2.0          |
| >= 3.x.x       | 0.12.x            | >= 2.0          |
| >= 2.x.x       | 0.12.x            | < 2.0           |
| <  2.x.x       | 0.11.x            | < 2.0           |

## Usage

This module is optimized to work with the [Claranet terraform-wrapper](https://github.com/claranet/terraform-wrapper) tool
which set some terraform variables in the environment needed by this module.
More details about variables set by the `terraform-wrapper` available in the [documentation](https://github.com/claranet/terraform-wrapper#environment).

```hcl
module "azure_region" {
  source  = "claranet/regions/azurerm"
  version = "x.x.x"

  azure_region = var.azure_region
}

module "rg" {
  source  = "claranet/rg/azurerm"
  version = "x.x.x"

  location    = module.azure_region.location
  client_name = var.client_name
  environment = var.environment
  stack       = var.stack
}

module "logs" {
  source  = "claranet/run-common/azurerm//modules/logs"
  version = "x.x.x"

  client_name         = var.client_name
  environment         = var.environment
  stack               = var.stack
  location            = module.azure_region.location
  location_short      = module.azure_region.location_short
  resource_group_name = module.rg.resource_group_name
}

module "data_factory" {
  source  = "claranet/data-factory/azurerm"
  version = "x.x.x"

  client_name    = var.client_name
  environment    = var.environment
  location       = module.azure_region.location
  location_short = module.azure_region.location_short
  stack          = var.stack

  resource_group_name = module.rg.resource_group_name

  logs_destinations_ids = [module.logs.log_analytics_workspace_id]
  logs_retention_days   = 90
}
```

## Providers

| Name | Version |
|------|---------|
| azurecaf | >= 1.2.6 |
| azurerm | >= 2.68 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| datafactory\_diagnostics | claranet/diagnostic-settings/azurerm | 4.0.2 |

## Resources

| Name | Type |
|------|------|
| [azurecaf_name.data_factory_name](https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/resources/name) | resource |
| [azurerm_data_factory.main_data_factory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_name | Client name/account used in naming | `string` | n/a | yes |
| custom\_data\_factory\_name | Custom name of the Data Factory | `string` | `null` | no |
| environment | Project environment | `string` | n/a | yes |
| extra\_tags | Extra tags to add | `map(string)` | `{}` | no |
| github\_configuration | Github configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration | `map(string)` | `{}` | no |
| global\_parameter | Global parameters for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter | `list(map(string))` | `[]` | no |
| location | Azure region to use | `string` | n/a | yes |
| location\_short | Short string for Azure location | `string` | n/a | yes |
| logs\_categories | Log categories to send to destinations. | `list(string)` | `null` | no |
| logs\_destinations\_ids | List of destination resources Ids for logs diagnostics destination. Can be Storage Account, Log Analytics Workspace and Event Hub. No more than one of each can be set. Empty list to disable logging. | `list(string)` | n/a | yes |
| logs\_metrics\_categories | Metrics categories to send to destinations. | `list(string)` | `null` | no |
| logs\_retention\_days | Number of days to keep logs on storage account | `number` | `30` | no |
| managed\_virtual\_network\_enabled | True to enable managed virtual network | `bool` | `true` | no |
| public\_network\_enabled | True to make data factory visible to the public network | `bool` | `true` | no |
| resource\_group\_name | Name of the resource group | `string` | n/a | yes |
| stack | Project stack name | `string` | n/a | yes |
| vsts\_configuration | Visual Studio Team Services configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| data\_factory\_id | Data factory id |
| data\_factory\_managed\_identity | Type of managed identity |
| data\_factory\_name | Data factory name |
<!-- END_TF_DOCS -->

## Related documentation

Microsoft Azure documentation: [docs.microsoft.com/en-us/azure/data-factory](https://docs.microsoft.com/en-us/azure/data-factory/)