# Data Factory

Azure Data Factory module

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.68 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| datafactory\_diagnostics | claranet/diagnostic-settings/azurerm | 4.0.1 |

## Resources

| Name | Type |
|------|------|
| [azurerm_data_factory.main_data_factory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| client\_name | Client name/account used in naming | `string` | n/a | yes |
| custom\_data\_factory\_name | Name of the resource | `string` | n/a | yes |
| environment | Project environment | `string` | n/a | yes |
| extra\_tags | Extra tags to add | `map(string)` | `{}` | no |
| github\_configuration | Github configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#github_configuration | `map(string)` | `{}` | no |
| global\_parameter | Global parameters for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#global_parameter | `any` | `{}` | no |
| location | Azure region to use | `string` | n/a | yes |
| location\_short | Short string for Azure location | `string` | n/a | yes |
| logs\_categories | Log categories to send to destinations. | `list(string)` | `null` | no |
| logs\_destinations\_ids | List of destination resources Ids for logs diagnostics destination. Can be Storage Account, Log Analytics Workspace and Event Hub. No more than one of each can be set. Empty list to disable logging. | `list(string)` | n/a | yes |
| logs\_metrics\_categories | Metrics categories to send to destinations. | `list(string)` | `null` | no |
| logs\_retention\_days | Number of days to keep logs on storage account | `number` | `30` | no |
| managed\_virtual\_network\_enabled | True to enable managed virtual network | `bool` | `true` | no |
| name\_prefix | Optional prefix for data factory name | `string` | `""` | no |
| public\_network\_enabled | True to make data factory visible to the public network | `bool` | `true` | no |
| resource\_group\_name | Name of the resource group | `string` | n/a | yes |
| stack | Project stack name | `string` | n/a | yes |
| vsts\_configuration | Visual Studio Team Services configuration for data factory. See documentation at https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory#vsts_configuration | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| data\_factory\_id | Data factory id |
| data\_factory\_name | Data factory name |
<!-- END_TF_DOCS -->

## Related documentation

Microsoft Azure documentation - Data Factory: https://docs.microsoft.com/en-us/azure/data-factory/