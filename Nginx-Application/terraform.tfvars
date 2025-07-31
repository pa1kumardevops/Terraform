# Variables for the VPC module

project  = "terraform-nginx-application"
vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.3.0/24",
  "10.0.5.0/24"
]

private_subnet_cidrs = [
  "10.0.2.0/24",
  "10.0.4.0/24",
  "10.0.6.0/24"
]

azs = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

# Variables for the Pritunl module
ami_id        = "ami-0d0ad8bb301edb745" # Replace with Amazon Linux 2023 AMI
instance_type = "t2.micro"
key_name      = "terraform-keypair" # Replace with your actual key pair name


# Variables for the Security Groups module


# Variables for the Nginx module
nginx_ami_id        = "ami-021a584b49225376d"
nginx_instance_type = "t2.medium"
nginx_key_name      = "terraform-keypair"