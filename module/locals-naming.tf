locals {
  # https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
  service_slug           = "ppg"
  landing_zone_slug      = var.landing_zone_slug
  application_id         = var.stack
  workload_info          = var.workload_info
  location_short         = var.location_short
  separator              = "-"
  generated_random_value = random_string.random.result
  name_components_list   = compact([local.service_slug, local.landing_zone_slug, local.location_short, local.application_id, local.workload_info, local.generated_random_value])
  standard_name          = join(local.separator, local.name_components_list)
  name                   = coalesce(lower(var.custom_name), lower(local.standard_name))
}
