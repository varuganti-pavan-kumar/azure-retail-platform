
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "project_name" {
  description = "Name of the retail platform project"
  type        = string
  default     = "azure-retail-platform"
}

output "project_name" {
  description = "The project name configured in Terraform"
  value       = var.project_name
}

resource "azurerm_resource_group" "retail" {
  name     = "rg-retail-demo"
  location = "UK South"
}

resource "azurerm_storage_account" "retail" {
  name                     = "retailcatalog0985f8"
  resource_group_name      = azurerm_resource_group.retail.name
  location                 = azurerm_resource_group.retail.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  https_traffic_only_enabled      = true
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false

  tags = {
    project     = var.project_name
    environment = "learning"
  }
}

resource "azurerm_storage_account_static_website" "retail" {
  storage_account_id = azurerm_storage_account.retail.id
  index_document     = "index.html"
}