output "public_instance_id" {
  value = aws_instance.public_web.id
}
output "ip_public_instance" {
  description = "Public IP of the public server"
  value       = aws_instance.public_web.public_ip
}



