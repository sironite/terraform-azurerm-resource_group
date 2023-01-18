variable "number_of_resource_groups" {
  description = "Amount of resource group(s) to create for the configuration"
  type        = integer
  default     = 1
}

variable "azure_location" {
  description = "Azure location to use"
  type        = string
}

variable "resource_group_name" {
  description = "resource group name"
  type        = list(string)
}

variable "resource_group_tags" {
  description = "resource group tags"
  type        = list(map(any))
}
