terraform {
  required_version = "> 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.68"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = ">= 1.2.6"
    }
  }
}
