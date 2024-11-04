# main.tf

terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.9.0"
    }
  }
}

provider "panos" {
  hostname = var.firewall_hostname
  username = var.username
  password = var.password
}

# Call the NOC and IP team configurations
module "noc_team" {
  source = "./noc"
}

module "ip_team" {
  source = "./ip"
}

