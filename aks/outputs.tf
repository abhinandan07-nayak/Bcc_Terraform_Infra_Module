output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "cluster_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "principal_id" {
  value       = azurerm_kubernetes_cluster.aks.identity[0].principal_id
  description = "Used for Role Assignments (Network Contributor, AcrPull, etc.)"
}

output "host" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.host
}