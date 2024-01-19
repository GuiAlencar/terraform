output "subnet_id" {
  description = "ID da subnet criada na Azure"
  value = azurerm_subnet.subnet.id 
}

output "network_security_group_id" {
  description = "ID do network security group na Azure"
  value = azurerm_network_security_group.network-security-group.id
}