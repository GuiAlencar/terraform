terraform {
  required_version = ">=1.0.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "rg-terraform-state"
    storage_account_name = "guilhermeterraformstate"
    container_name = "remote-state"
    key = "for-each/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}