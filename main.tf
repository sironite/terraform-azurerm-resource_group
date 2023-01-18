resource "azurerm_resource_group" "this" {
  count = var.number_of_resource_groups

  name     = element(var.resource_group_name[*], count.index)
  location = var.azure_location

  tags = element(var.resource_group_tags[*], count.index)
}
