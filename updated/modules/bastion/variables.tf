variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "public_subnet_id" {
  description = "The Public Subnet ID"
  type        = string
}

variable "bastion_sg_id" {
  description = "The Bastion Security Group ID"
  type        = string
}

variable "private_instances_sg_id" {
  description = "The Private Instances Security Group ID"
  type        = string
}

variable "bastion_instance_type" {
  description = "Instance type for Bastion host"
  type        = string
}

variable "windows_image_id" {
  description = "Windows Image ID for the Bastion host"
  type        = string
}

variable "owner" {
  description = "Owner tag"
  type        = string
}

variable "testcase" {
  description = "Test case tag"
  type        = string
}

variable "instance_name" {
    description = "Instance name for Bastion host"
    type        = "string"
}
