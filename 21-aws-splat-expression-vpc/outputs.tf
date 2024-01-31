output "subnet_id" {
  description = "Ids das subnets criadas na AWS"
  value = aws_subnet.subnet[*].id
}

