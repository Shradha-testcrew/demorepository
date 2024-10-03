output "bastion_public_ip" {
  value = alicloud_instance.bastion_host.eip_address
}
