variable "region" {
  description = "The Alibaba Cloud region to deploy resources in"
  type        = string
  default     = "me-central-1"
}

variable "profile" {
  description = "The CLI profile to use for authentication"
  type        = string
  default     = "default"
}

variable "zone_id" {
  description = "The availability zone for the disk"
  type        = string
  default     = "me-central-1a"
}

variable "disk_name" {
  description = "The name of the disk"
  type        = string
  default     = "disk-by-tf"
}

variable "description" {
  description = "The description of the disk"
  type        = string
  default     = "An empty data disk created via Terraform"
}

variable "size" {
  description = "The size of the disk in GB"
  type        = number
  default     = 20
}

variable "category" {
  description = "The category (type) of the disk"
  type        = string
  default     = "cloud_auto"
}

variable "instance_id" {
  description = "The ID of the ECS instance to attach the disk to"
  type        = string
}
