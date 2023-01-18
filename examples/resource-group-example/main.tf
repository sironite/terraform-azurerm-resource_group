module "resource_group" {
  source  = "TheIronRock95/resourcegroup/azurerm"
  version = "x.x.x"

  count               = var.number_of_resource_groups
  resource_group_name = var.resource_group_name
  azure_location      = var.azure_location
}
