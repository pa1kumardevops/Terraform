module "vpc" {
  source = "./modules/vpc"
  project              = var.project
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
}

module "security_groups" {
  source             = "./modules/security_groups"
  vpc_id             = module.vpc.vpc_id
  vpn_port           = 1194
  pritunl_ssh_cidr   = var.pritunl_ssh_cidr
  alb_ingress_cidr   = var.alb_ingress_cidr
}


module "pritunl" {
  source                = "./modules/pritunl"
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = module.vpc.public_subnet_ids[0]             # passed as value
  security_group_id     = module.security_groups.pritunl_sg_id        # passed as value
  key_name              = var.key_name
}
