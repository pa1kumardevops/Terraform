# Variables for the VPC module

variable "project" {
  description = "Project name for tagging"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

# Variables for the Pritunl module

variable "ami_id" {
  description = "AMI ID for the Pritunl instance"
  type        = string
}
variable "instance_type" {
  description = "EC2 instance type for Pritunl"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for SSH access to the Pritunl instance"
  type        = string
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the Pritunl EC2 instance"
}

variable "security_group_id" {
  type        = string
  description = "Security group ID for the Pritunl EC2 instance"
}
# Variables for the Security Groups module

variable "pritunl_ssh_cidr" {
  description = "Allowed CIDR for SSH to Pritunl"
  type        = string
  default     = "0.0.0.0/0"
}

variable "alb_ingress_cidr" {
  description = "CIDR block to allow traffic to ALB"
  type        = string
  default     = "0.0.0.0/0"
}
