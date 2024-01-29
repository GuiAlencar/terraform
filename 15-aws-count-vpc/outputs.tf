output "subnet_0_id" {
  description = "Id da subnet criada na AWS"
  value = aws_subnet.subnet[0].id
}

output "subnet_1_id" {
  description = "Id da subnet criada na AWS"
  value = aws_subnet.subnet[1].id
}

output "subnet_2_id" {
  description = "Id da subnet criada na AWS"
  value = aws_subnet.subnet[2].id
}