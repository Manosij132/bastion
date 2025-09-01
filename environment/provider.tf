terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }

  backend "azurerm" {
    use_oidc             = true                                    # Can also be set via `ARM_USE_OIDC` environment variable.
    tenant_id            = "25da0254-8640-4e13-9016-d3428661a477"  # Can also be set via `ARM_TENANT_ID` environment variable.
    subscription_id      = "972b29e5-b4b2-4f43-b814-02879737840d"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    client_id            = "74025b64-fb08-467b-9d03-2146941c696f"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    resource_group_name  = "rg-manotf"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "tfstatemano"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
  subscription_id = "972b29e5-b4b2-4f43-b814-02879737840d"
}
