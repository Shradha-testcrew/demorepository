output "bastion_sg_id" {
  value = alicloud_security_group.bastion_sg.id
}

output "private_instances_sg_id" {
  value = alicloud_security_group.private_instances_sg.id
}