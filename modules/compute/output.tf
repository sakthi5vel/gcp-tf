output "instance_ids" {
  value = [for instance in google_compute_instance.vm_instance : instance.id]
}
