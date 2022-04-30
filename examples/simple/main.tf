module "firewall" {
  source        = "../../"
  name          = "firewall-example"
  allowed_ip    = ["0.0.0.0/0"]
  allowed_ports = [22, 80]
}

provider "digitalocean" {
}
