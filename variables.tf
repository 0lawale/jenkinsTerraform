variable "instance_type" {
  description = "the instance type of the jenkins server"
  type = string
}
variable "key_name" {
  description = "the ssh key name"
  type = string
}
variable "server_name" {
  description = "name of the jenkins server"
  type = string
}
variable "vpc_cidr" {
  description = "the cidr range of the vpc"
  type = string
}
variable "public_subnet_cidr" {
  description = "the cidr range range of the public subnet"
  type = string
}
variable "vpc_name" {
  description = "the name of the vpc"
  type = string
}
variable "igw_name" {
  description = "the name of the internet gateway"
  type = string
}
variable "jenkins_rt_name" {
  description = "the name of the route table"
  type = string
}
variable "jenkins_sg_name" {
  description = "the name of the security group"
  type = string
}

