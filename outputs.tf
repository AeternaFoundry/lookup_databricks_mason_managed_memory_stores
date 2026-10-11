output "mason_managed_memory_stores_lookup_managed_memory_stores" {
  description = "Map of managed_memory_stores values across all mason_managed_memory_stores_lookup, keyed the same as var.mason_managed_memory_stores_lookup except keys with no managed_memory_stores are omitted"
  value       = { for k, v in data.databricks_mason_managed_memory_stores.mason_managed_memory_stores_lookup : k => v.managed_memory_stores if v.managed_memory_stores != null && length(v.managed_memory_stores) > 0 }
}
output "mason_managed_memory_stores_lookup_page_size" {
  description = "Map of page_size values across all mason_managed_memory_stores_lookup, keyed the same as var.mason_managed_memory_stores_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_mason_managed_memory_stores.mason_managed_memory_stores_lookup : k => v.page_size if v.page_size != null }
}
output "mason_managed_memory_stores_lookup_provider_config" {
  description = "Map of provider_config values across all mason_managed_memory_stores_lookup, keyed the same as var.mason_managed_memory_stores_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_mason_managed_memory_stores.mason_managed_memory_stores_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

