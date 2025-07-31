variable "vpc_id" {
  description = "VPC ID for all SGs"
  type        = string
}

variable "vpn_port" {
  description = "UDP port used by Pritunl"
  type        = number
  default     = 1194
}

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
