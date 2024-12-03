resource "google_compute_instance" "vm_instance" {
  count        = 1
  name         = "vm-${terraform.workspace}-${count.index}"
  machine_type = var.machine_type
  zone         = "${var.region}-a"
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network_name
    subnetwork = var.subnet.name
  }
}
