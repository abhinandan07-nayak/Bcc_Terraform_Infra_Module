variable "acr_name" {
  type        = string
  description = "The name of the Azure Container Registry (must be globally unique, alphanumeric only)"
}

variable "location" {
  type        = string
}

variable "rg_name" {
  type        = string
}

variable "sku" {
  type        = string
  default     = "Basic" # Basic is cost-effective for POCs
}

variable "admin_enabled" {
  type        = bool
  default     = true
}