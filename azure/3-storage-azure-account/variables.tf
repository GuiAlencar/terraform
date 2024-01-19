variable "location" {
  description = "Região onde os recursos serão criados na Azure"
  type = string
  default = "West Europe"
}

variable "account_tier" {
  description = "Tier da Storage account na azure"
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage account"
  type = string
  default = "LRS"
}

variable "resource_group_name" {
  description = "Nome para o Resource Group na Azure"
  type = string 
  default = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Nome da storage account na azure"
  type = string 
  default = "guilhermeterraform"
}

variable "container_name" {
  description = "nome do container na Azure"
  type = string 
  default = "container-terraform"
}