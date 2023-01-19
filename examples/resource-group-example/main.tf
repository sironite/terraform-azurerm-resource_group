module "resource_group" {
  source  = "TheIronRock95/resourcegroup/azurerm"
  version = "x.x.x"

  resource_group_name = var.resource_group_name
  azure_location      = var.azure_location
}

