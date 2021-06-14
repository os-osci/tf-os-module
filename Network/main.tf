resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_config.name
  location            = var.vnet_config.location
  resource_group_name = var.vnet_config.resource_group_name
  address_space       = var.vnet_config.address_space
}

resource "azurerm_subnet" "subnets" {
  //name                 = var.Network_asesubnet_name
  name = lookup(element(var.vnet_config.subnets,count.index),"name")
  count = length(var.vnet_config.subnets)
  resource_group_name  = var.vnet_config.resource_group_name
  virtual_network_name = var.vnet_config.name
  address_prefixes     = lookup(element(var.vnet_config.subnets,count.index),"address_space")
  depends_on = [
    azurerm_virtual_network.vnet
  ]
}


/*
resource "azurerm_subnet" "vmsubnet" {
  name                 = var.Network_vmsubnet_name
  resource_group_name  = var.Network_rg_name
  virtual_network_name = var.Network_name
  address_prefixes     = var.Network_vmsubnet_address_space
}*/