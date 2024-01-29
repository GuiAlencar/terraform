variable "cidr_vpc" {
  description = "Cidr para a VPC criada na aws"
  type = string
}

variable "cidr_subnet" {
  description = "Cidr para a subnet na aws"
  type = string
}

variable "environment" {
    description = "Ambiente a que pertencem os recursos na aws "
    type = string
}