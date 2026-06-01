output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.this.id
}

output "instance_ip" {
  description = "IP publica de la instancia"
  value       = aws_instance.this.public_ip
}

output "security_group_id" {
  description = "ID del Security Group"
  value       = aws_security_group.this.id
}
