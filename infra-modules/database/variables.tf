variable "server_name" {
  type        = string
  description = "Name of the SQL Server"
}

variable "db_name" {
  type        = string
  description = "Name of the SQL Database"
}

variable "location" {
  type        = string
}

variable "rg_name" {
  type        = string
}

variable "admin_login" {
  type        = string
  default     = "sqladmin"
}

variable "admin_password" {
  type        = string
  sensitive   = true
}