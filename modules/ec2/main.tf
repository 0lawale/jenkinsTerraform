
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}


resource "aws_instance" "public_web" {
  ami           = data.aws_ami.ubuntu.id 
  instance_type = var.instance_type
  key_name      = var.key_name      
  subnet_id     = var.public_subnet_id

  tags = {
    Name        = var.server_name
  }

  vpc_security_group_ids = [var.public_security_group]
  
}
