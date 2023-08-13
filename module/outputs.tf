output "proximity_placement_group_id" {
  value       = azurerm_proximity_placement_group.this.id
  description = "Proxility placement group Id"
}

output "proximity_placement_group_name" {
  value       = azurerm_proximity_placement_group.this.name
  description = "Proxility placement group name"
}