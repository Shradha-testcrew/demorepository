variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "vpn_ip_range" {
  description = "The IP range of the VPN to allow access to the Bastion host"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}