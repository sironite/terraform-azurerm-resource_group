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
