variable "zone_id" {
  description = "The availability zone for the disk"
  type        = string
}

variable "disk_name" {
  description = "The name of the disk"
  type        = string
}

variable "description" {
  description = "The description of the disk"
  type        = string
}

variable "size" {
  description = "The size of the disk in GB"
  type        = number
}

variable "category" {
  description = "The category (type) of the disk"
  type        = string
}

variable "instance_id" {
  description = "The ID of the ECS instance to attach the disk to"
  type        = string
}

variable "tags" {
  description = "Tags for the disk"
  type        = map(string)
}
