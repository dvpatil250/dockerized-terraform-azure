provider "azurerm" {
  features {}
  subscription_id = "<MY/YOUR AZURE SUBCRIPTION ID>"
}

resource "azurerm_resource_group" "devops_rg" {
  name     = "devops-test-rg"
  location = "East US"
}

