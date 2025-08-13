terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "hcl_rg"
    storage_account_name = "hclstg"
    container_name       = "hclcnt"
    key                  = "hcl.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "bcf304d8-21b8-4358-9c77-54b5dd26f938"
}
