resource "azurerm_mssql_server" "sql" {
  name                         = var.server_name
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password
}

resource "azurerm_mssql_database" "db" {
  name           = var.db_name
  server_id      = azurerm_mssql_server.sql.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  sku_name       = "Basic" # Cheapest option for POC
  max_size_gb    = 2
}

# Senior Practice: This firewall rule allows other Azure services (like AKS) 
# to talk to this SQL server without needing a Private Endpoint yet.
resource "azurerm_mssql_firewall_rule" "allow_azure" {
  name             = "AllowAzureServices"
  server_id        = azurerm_mssql_server.sql.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}