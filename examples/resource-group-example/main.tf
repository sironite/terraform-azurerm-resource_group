module "resource_group" {
  source  = "sironite/resource_group/azurerm"
  version = "x.x.x"

  resource_group_name = var.resource_group_name
  azure_location      = var.azure_location
}

