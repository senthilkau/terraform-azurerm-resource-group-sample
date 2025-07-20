variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string

  validation {
    condition     = can(regex("^tf-sample", var.resource_group_name))
    error_message = "The resource group name must start with 'tf-sample'."
  }
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
  default     = "australiaeast"
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}
