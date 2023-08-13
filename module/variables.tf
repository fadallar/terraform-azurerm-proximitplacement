variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "location_short" {
  description = "Short string for Azure location."
  type        = string
}

variable "stack" {
  description = "Project stack name."
  type        = string
  validation {
    condition     = var.stack == "" || can(regex("^[a-z0-9]([a-z0-9-]*[a-z0-9])?$", var.stack))
    error_message = "Invalid variable: ${var.stack}. Variable name must start with a lowercase letter, end with an alphanumeric lowercase character, and contain only lowercase letters, digits, or a dash (-)."
  }
}

variable "allowed_vm_sizes" {
  description = "Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group. Removing allowed_vm_sizes after it is set forces a new resource to be created."
  type        = list(string)
  default     = null
}

variable "zone" {
  description = "Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created.Allowed_vm_sizes must be set when zone is specified."
  type        = list(string)
  default     = []
}