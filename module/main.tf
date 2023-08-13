# Add Checkov skips here, if required.

resource "azurerm_proximity_placement_group" "this" {
  name                = local.name
  location            = var.location
  resource_group_name = var.resource_group_name

  allowed_vm_sizes = var.allowed_vm_sizes
  zone             = var.zone

  tags = merge(var.default_tags, var.extra_tags)

  lifecycle {
    precondition {
      condition     = var.zone == null ? true : var.allowed_vm_sizes != []
      error_message = "If zone is defined allowed_vm_sizes must not be empty"
    }
  }
}