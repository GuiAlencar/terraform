variable "location" {
  description = "Região onde os recursos serão criados na Azure"
  type = map(string)
  default = {
    "europa" = "West Europe",
    "eua" = "East Us",
    "asia" = "Japan East",
    "brasil" = "Brazil South"
  }
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

