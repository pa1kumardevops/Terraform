resource "aws_instance" "nginx" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_ids[1]
  vpc_security_group_ids  = [var.security_group_id]
  key_name               = var.key_name

  user_data = file("${path.module}/../../scripts/nginx.sh")

  tags = {
    Name = "nginx-instance"
  }
}