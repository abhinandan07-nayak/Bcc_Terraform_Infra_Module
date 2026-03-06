resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.cluster_name
  sku_tier            = "Free"

  default_node_pool {
    name           = "system"
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  # Uses SystemAssigned for simplicity in POC
  identity {
    type = "SystemAssigned"
  }

  # Senior Features
  workload_autoscaler_profile {
    keda_enabled = true
  }

  storage_profile {
    blob_driver_enabled = true
  }

  # Networking Profile to avoid the 10.0.0.0/16 conflict we hit
  network_profile {
    network_plugin    = "azure"
    service_cidr      = "172.16.0.0/16"
    dns_service_ip    = "172.16.0.10"
  }

  tags = {
    Environment = "Dev"
  }
}
