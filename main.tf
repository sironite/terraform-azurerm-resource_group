resource "azurerm_resource_group" "this" {
  for_each = toset(var.resource_group_name) 
  
  name     = each.value          
  location = var.azure_location

  tags = var.resource_group_tags
}
