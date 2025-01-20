provider "alicloud" {
  region  = var.region
  profile = var.profile
}

module "disk_module" {
  source        = "./modules/disk_create_and_attach"
  zone_id       = var.zone_id
  disk_name     = var.disk_name
  description   = var.description
  size          = var.size
  category      = var.category
  instance_id   = var.instance_id
  tags          = local.tags
}

