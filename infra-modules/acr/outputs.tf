output "id" {
  value       = azurerm_container_registry.acr.id
  description = "The ID of the Container Registry"
}

output "login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "The URL used to login to the ACR (e.g., technophile.azurecr.io)"
}

output "admin_username" {
  value = azurerm_container_registry.acr.admin_username
}

output "admin_password" {
  value     = azurerm_container_registry.acr.admin_password
  sensitive = true
}