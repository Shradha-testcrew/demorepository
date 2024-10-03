variable "region" {
  description = "Region where the resources will be created."
  type        = string
  default     = "me-central-1"
}

variable "instance_name" {
    description = "Instance name for Bastion host"
    type        = string
}

variable "vpc_id" {
  description = "The ID of the existing VPC."
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet for the Bastion host."
  type        = string
}

variable "vpn_ip_range" {
  description = "The IP range of the VPN to allow access to the Bastion host."
  type        = string
}

variable "bastion_instance_type" {
  description = "The instance type for the Bastion host."
  type        = string
  default     = "ecs.g6.large"
}

variable "windows_image_id" {
  description = "The image ID for the Windows server."
  type        = string
  default     = "win2016_64_ent_sp2_en"
}
