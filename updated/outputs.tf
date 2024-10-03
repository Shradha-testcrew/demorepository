output "bastion_host_public_ip" {
  description = "The public IP address of the Bastion host"
  value       = module.bastion_host.bastion_public_ip
}
