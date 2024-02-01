output "vm_1_ip" {
  description = "IP da vm criada na AWS"
  value = aws_instance.vm_1.public_ip
}

output "vm_2_ip" {
  description = "IP da vm criada na AWS"
  value = aws_instance.vm_2.public_ip
}