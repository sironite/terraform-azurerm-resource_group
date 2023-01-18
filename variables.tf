variable "number_of_resource_groups" {
  description = "Amount of resource group(s) to create for the configuration"
  type        = number
  default     = 1
  validation {
    condition     = var.number_of_resource_groups >= 1
    error_message = "Must be number higer or equal to 1."
  }
}

variable "azure_location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
  sensitive   = false
}

variable "resource_group_name" {
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = list(string)
  sensitive   = false
}

variable "resource_group_tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = list(map(any))
  sensitive   = false
  default     = [{}]
}
