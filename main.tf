/**
* # Subnet module
* There's an option to associate Route Table and NSG to the Subnet
*/

resource "azurerm_subnet" "snet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.subnet_address_prefixes
  virtual_network_name = var.virtual_network_name
}

resource "azurerm_subnet_route_table_association" "rtassoc" {
  count = var.route_table_id == null ? 0 : 1

  subnet_id      = azurerm_subnet.snet.id
  route_table_id = var.route_table_id

  depends_on = [
    azurerm_subnet.snet
  ]
}

resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  count = var.network_security_group_id == null ? 0 : 1

  subnet_id                 = azurerm_subnet.snet.id
  network_security_group_id = var.network_security_group_id

  depends_on = [
    azurerm_subnet.snet
  ]
}