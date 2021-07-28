# Authentication
provider "azurerm" {
  features {}
  subscription_id = "6b806999-887d-4690-9e0b-dcb8b0504009"
  client_id       = "9e47a648-bc41-4c9e-b218-8f11d46b06ac"
  client_secret   = "777567a3-d96a-48a2-8e56-9cf9005790be"
  tenant_id       = "46e62401-e0cb-44e7-b9bf-90bf637a3628"
}

# Variable declaration
variable "tf_var_arm_subscription_id" {
  description = "enter subscription id"
}

variable "tf_var_arm_client_id" {
  description = "Enter Client ID"
}

variable "tf_var_arm_client_secret" {
  description = "Enter secret"
}

variable "tf_var_arm_tenant_id" {
  description = "Enter tenant ID"
}

variable "resourceGroupName" {
  type        = string
  default     = "demo-rg"
  description = "Resource Group for this deployment."
}

variable "location" {
  type        = string
  default     = "westus"
  description = "Enter the location for all resources."
}

variable "adminUsername" {
  type        = string
  description = "User name for the Virtual Machine"
}

variable "vmName" {
  type        = string
  description = "Name for the Virtual Machine"
}

variable "adminPasswordOrKey" {
  type        = string
  description = "SSH Key or password for the Virtual Machine. SSH key is recommended."
}

variable "authenticationType" {
  type        = string
  default     = "sshPublicKey"
  description = "Type of authentication to be used on the Virtual Machine. SSH key is recommended but if you want to use password authentication use 'password'"
  validation {
    condition     = var.authenticationType == "sshPublicKey" || var.authenticationType == "password"
    error_message = "Authentication type hould be either \"ssh\" or \"password\"."
  }
}
