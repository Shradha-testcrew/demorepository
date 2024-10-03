resource "alicloud_instance" "bastion_host" {
  instance_name      = var.instance_name
  instance_type      = var.bastion_instance_type
  security_group_id  = var.bastion_sg_id
  vpc_id             = var.vpc_id
  vswitch_id         = var.public_subnet_id
  image_id           = var.windows_image_id
  allocate_public_ip = true
}

