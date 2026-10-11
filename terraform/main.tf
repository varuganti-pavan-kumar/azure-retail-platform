
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
  name = "rg-retail-demo"
  location = "UK South"
}