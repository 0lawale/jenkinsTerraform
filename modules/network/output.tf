output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnet_id" {
  value = aws_subnet.public["public1"].id
}
output "public_security_group_id" {
  value = aws_security_group.public_server_sg.id
}