terraform {
  required_version = ">= 1.0.0"
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