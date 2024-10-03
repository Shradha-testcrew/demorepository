resource "alicloud_security_group" "bastion_sg" {
  name  = "bastion_sg"
  vpc_id = var.vpc_id
  owner = local.owner
  testcase = local.testcase
}

resource "alicloud_security_group_rule" "allow_vpn_access" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "internet"
  security_group_id = alicloud_security_group.bastion_sg.id
  port_range        = "3389/3389"
  cidr_ip           = var.vpn_ip_range
}

resource "alicloud_security_group" "private_instances_sg" {
  name  = "private_instances_sg"
  vpc_id = var.vpc_id
  owner = local.owner
  testcase = local.testcase
}

resource "alicloud_security_group_rule" "allow_private_instances_access_bastion" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  security_group_id = alicloud_security_group.bastion_sg.id
  port_range        = "3389/3389"
  source_group_id   = alicloud_security_group.private_instances_sg.id
}


