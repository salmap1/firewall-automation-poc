terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.9.0"  # Use the version you need
    }
  }
}

provider "panos" {
  hostname = var.hostname
  username = var.username
  password = var.password
}

# Call the NOC and IP team configurations
module "noc_team" {
  source    = "./noc"
  hostname  = var.hostname
  username  = var.username
  password  = var.password
}

module "ip_team" {
  source    = "./ip"
  hostname  = var.hostname
  username  = var.username
  password  = var.password
}
