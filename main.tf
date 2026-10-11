data "databricks_mason_managed_memory_stores" "mason_managed_memory_stores_lookup" {
  for_each = var.mason_managed_memory_stores_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

