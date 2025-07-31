
resource "aws_instance" "pritunl" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  key_name               = var.key_name

  user_data = file("../scripts/install_pritunl.sh")

  tags = {
    Name = "pritunl-instance"
  }
}
