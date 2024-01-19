output "subnet_id" {
  description = "Id da subnet criada na AWS"
  value = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "ID da security group criada na AWS"
  value = aws_security_group.security_group.id
}