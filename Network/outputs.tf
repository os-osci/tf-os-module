output "subnetInfo" {
  value = {
    subnetid = azurerm_subnet.subnets[*].id
    subnetname = azurerm_subnet.subnets[*].name
  }
}