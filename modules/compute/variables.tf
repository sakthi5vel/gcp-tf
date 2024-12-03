variable "machine_type" {
  description = "The machine type"
  type        = string
}

variable "network_name" {
  description = "The VPC network to attach"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region where instances will be created"
  type        = string
}

variable "subnet" {
  description = "Name of the Subnet"
  type = string
}