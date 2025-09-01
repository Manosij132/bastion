terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
#  backend "azurerm" {
 #   resource_group_name = "rg-manotf"
  #  storage_account_name = "tfstatemano"
   # container_name = "tfstate"
    #key = "dev.tfstate"
    
 # }
}

provider "azurerm" {
  features {}
  subscription_id = "972b29e5-b4b2-4f43-b814-02879737840d"
}
