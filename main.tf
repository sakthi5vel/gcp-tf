provider "google" {
  credentials = "key.json"
  project     = var.project_id
  region      = var.region
}

# VPC Module
module "vpc" {
  source       = "./modules/vpc"
  network_name = var.network_name
  subnets      = var.subnets
  project_id   = var.project_id

}

# Compute Engine Module
module "compute" {
  source       = "./modules/compute"
  machine_type = var.machine_type
  network_name = var.network_name
  project_id   = var.project_id
  region       = var.region
}
