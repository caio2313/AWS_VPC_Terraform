output "subnet-id" {
  description = "ID da subnet criada na AWS."
  value       = aws_subnet.subnet.id
}

output "security-group" {
  description = "ID da security group criada na AWS"
  value       = aws_security_group.security-group.id
}