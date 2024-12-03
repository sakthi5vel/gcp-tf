resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }
  
  name          = each.value.name
  ip_cidr_range = each.value.cidr
  network       = google_compute_network.vpc_network.id
  region        = each.value.region
  project       = var.project_id
}
