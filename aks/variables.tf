variable "cluster_name" {
  type        = string
  description = "The name of the AKS cluster"
}

variable "location" {
  type        = string
}

variable "rg_name" {
  type        = string
}

variable "subnet_id" {
  type        = string
  description = "The Subnet ID where the AKS nodes should be placed"
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2s_v2" # Updated for South India compatibility
}

variable "node_count" {
  type    = number
  default = 1
}