output "storage_account_id" {
  description = "ID da storage Account criada na Azure"
  value = azurerm_storage_account.storage_account.id
}

output "storage_account_access_key" {
  description = "Primay Access key da storage account criada na Azure"
  value = azurerm_storage_account.storage_account.primary_access_key
  sensitive = true
}