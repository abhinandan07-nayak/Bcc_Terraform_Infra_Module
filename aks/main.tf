resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.cluster_name
  sku_tier            = "Free" # Trial friendly

  default_node_pool {
    name           = "system"
    node_count     = 1
    vm_size        = "Standard_B2s_v2"
    vnet_subnet_id = var.subnet_id
  }

  identity { type = "SystemAssigned" }

  # Senior Features: KEDA & Blob Driver
  workload_autoscaler_profile { keda_enabled = true }
  storage_profile { blob_driver_enabled = true }
}
