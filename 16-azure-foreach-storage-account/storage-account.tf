resource "azurerm_resource_group" "resource_group" {
  for_each = var.location
  name     = "rg-${ech.key}"
  location = each.key

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  for_each = azurerm_resource_group.resource_group

  name                     = "guilherme${each.key}"
  resource_group_name      = each.value.name 
  location                 = each.value.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

resource "azurerm_storage_container" "storage_container" {
  for_each = azurerm_storage_account.storage_account
  
  name                  = "imagens-${each.key}"
  storage_account_name  = each.value.name 
}