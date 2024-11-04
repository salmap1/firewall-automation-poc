terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.9.0"
    }
  }
}

provider "panos" {
  hostname = var.hostname
  username = var.username
  password = var.password
}

resource "panos_security_policy" "noc_allow_ssh" {
  rule {
    name                  = "NOC-Allow-SSH-Rule"
    description           = "Allow SSH traffic from any source to any destination for the NOC team"
    source_zones          = ["any"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    destination_zones     = ["any"]
    destination_addresses = ["any"]
    categories            = ["any"]
    applications          = ["ssh"]
    services              = ["application-default"]
    action                = "allow"
  }
}

