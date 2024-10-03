provider "alicloud" {
  region = var.region
}

# Data block to retrieve VPC info
data "alicloud_vpcs" "default" {
  is_default = true
}

module "bastion_security_groups" {
  source               = "./modules/security_groups"
  vpc_id               = var.vpc_id
  vpn_ip_range         = var.vpn_ip_range
  
}

module "bastion_host" {
  source               = "./modules/bastion"
  instance_name        = var.instance_name
  vpc_id               = var.vpc_id
  public_subnet_id     = var.public_subnet_id
  bastion_sg_id        = module.bastion_security_groups.bastion_sg_id
  private_instances_sg_id = module.bastion_security_groups.private_instances_sg_id
  bastion_instance_type = var.bastion_instance_type
  windows_image_id     = var.windows_image_id
  owner = local.owner
  testcase = local.testcase
}
