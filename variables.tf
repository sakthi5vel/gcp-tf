variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "network_name" {
  description = "VPC network name"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "machine_type" {
  description = "Machine type for Compute Engine instances"
  type        = string
}