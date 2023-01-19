# Terraform module | AzureRM - Resource Group

This Terraform module is designed to create a resource group for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`resource_group`

```hcl
module "resource_group" {
  source  = "TheIronRock95/resourcegroup/azurerm"
  version = "x.x.x"

  count               = var.number_of_resource_groups
  resource_group_name = var.resource_group_name
  azure_location      = var.azure_location
}

}
```

## Authors

The module is maintained by [Wouter Damman](https://github.com/TheIronRock95)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
