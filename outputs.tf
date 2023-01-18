output "resource_group_name" {
  description = "resource group name"
  sensitive   = false
  value       = try(azurerm_resource_group.this.*.name)
}

output "resource_group_id" {
  description = "resource group id"
  sensitive   = false
  value       = try(azurerm_resource_group.this.*.id)
}

output "resource_group_location" {
  description = "resource group location"
  sensitive   = false
  value       = try(azurerm_resource_group.this.*.location)
}