variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the VNet"
}

variable "location" {
  type        = string
  description = "Azure region (southindia)"
}

variable "rg_name" {
  type        = string
  description = "The resource group name"
}
