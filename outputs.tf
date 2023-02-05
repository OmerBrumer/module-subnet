output "id" {
  description = "Id of subnet."
  value       = azurerm_subnet.snet.id
}

output "name" {
  description = "Name of subnet."
  value       = azurerm_subnet.snet.name
}

output "object" {
  description = "Object of subnet."
  value       = azurerm_subnet.snet
}