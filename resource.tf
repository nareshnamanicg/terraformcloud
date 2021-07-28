# Configure the Microsoft Azure Provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.69.0"
    }
  }
}

provider "azurerm" {
  features {}
  # Configuration options
  subscription_id = "6b806999-887d-4690-9e0b-dcb8b0504009"
  client_id       = "9e47a648-bc41-4c9e-b218-8f11d46b06ac"
  client_secret   = "777567a3-d96a-48a2-8e56-9cf9005790be"
  tenant_id       = "46e62401-e0cb-44e7-b9bf-90bf637a3628"
}
