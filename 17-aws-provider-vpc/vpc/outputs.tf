output "vpc_id_default" {
  description = "ID da vpc criada na aws região default"
  value = aws_vpc.default.id
}

output "vpc_id_provider_1" {
  description = "ID da vpc criada na aws região provider_1"
  value = aws_vpc.provider_1.id
}

output "vpc_id_provider_2" {
  description = "ID da vpc criada na aws região provider_2"
  value = aws_vpc.provider_2.id
}