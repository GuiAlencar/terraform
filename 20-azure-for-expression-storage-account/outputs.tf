output "storage_account_id" {
  description = "ID das storages Accounts criadas na Azure"
  value = [for sa in azurerm_storage_account.storage_account : sa.id]
}

output "sa_primary_access_keys" {
  description = "Primay Access keys da storages accounts criadas na Azure"
  value = {for key, sa in azurerm_storage_account.storage_account : key => sa.primary_access_key }
  sensitive = true

  // terraform output sa_primary_keys
}
