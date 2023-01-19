resource "azurerm_resource_group" "this" {
  count = length(var.resource_group_name)
  
  name     = var.resource_group_name[count.index]         
  location = var.azure_location

  tags = var.resource_group_tags
}
