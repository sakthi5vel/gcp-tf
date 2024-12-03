project_id   = "playground-s-11-ed24db5a"
region       = "us-central1"
network_name = "vpc-prod"
subnets = [
  {
    name   = "subnet-prod-1"
    cidr   = "10.0.1.0/24"
    region = "us-central1"
  }
]
machine_type = "e2-medium"