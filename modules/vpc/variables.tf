variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnets" {
  description = "List of subnets for the VPC"
  type = list(object({
    name   = string
    cidr   = string
    region = string
  }))
}

variable "project_id" {
  description = "The project ID"
  type        = string
}