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
variable "subnet_id" {
  description = "Subnet ID for the Pritunl instance"
  type        = string
}
variable "security_group_id" {
  description = "Security group ID for the Pritunl instance"
  type        = string
}
variable "key_name" {
  description = "Key pair name for SSH access to the Pritunl instance"
  type        = string
}