output "id" {
  value       = digitalocean_firewall.this.id
  description = "A unique ID that can be used to identify and reference a Firewall."
}

output "name" {
  value       = digitalocean_firewall.this.name
  description = "The name of the Firewall."
}
