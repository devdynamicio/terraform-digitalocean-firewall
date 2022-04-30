variable "name" {
  type        = string
  description = "The Firewall name"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "The names of the Tags assigned to the Firewall."
}

variable "allowed_ip" {
  type        = list(any)
  default     = []
  description = "List of allowed ip."
}

variable "allowed_ports" {
  type        = list(any)
  default     = []
  description = "List of allowed ingress ports."
}

variable "protocol" {
  type        = string
  default     = "tcp"
  description = "The type of traffic to be allowed. This may be one of tcp, udp or icmp."
}

variable "droplet_ids" {
  type        = list(any)
  default     = []
  description = "The list of the IDs of the Droplets assigned to the Firewall."
}
