resource "alicloud_disk" "disk" {
  zone_id       = var.zone_id
  disk_name     = var.disk_name
  description   = var.description
  size          = var.size
  category      = var.category
  tags          = var.tags
}

resource "alicloud_disk_attachment" "disk_attachment" {
  disk_id     = alicloud_disk.disk.id
  instance_id = var.instance_id
}
