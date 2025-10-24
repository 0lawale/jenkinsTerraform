provider "aws" {
  region = var.region
}

module "ec2" {
  source = "./modules/ec2"
  instance_type = var.instance_type
  public_subnet_id = module.network.public_subnet_id
  key_name = var.key_name
  public_security_group = module.network.public_security_group_id
  server_name = var.server_name
}

module "network" {
  source = "./modules/network"
  vpc_cidr = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  vpc_name = var.vpc_name
  jenkins_rt_name = var.jenkins_rt_name
  jenkins_sg_name = var.jenkins_sg_name
  igw_name = var.igw_name
}