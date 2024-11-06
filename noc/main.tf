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
    name                  = "Allow-SSH-Rule"
    description           = "Allow SSH traffic from any source to any destination by NOC team"
    source_zones          = ["any"]
    source_addresses      = ["1.1.1.1"]
    source_users          = ["any"]
    destination_zones     = ["any"]
    destination_addresses = ["2.2.2.2"]
    categories            = ["any"]
    applications          = ["ssh"]
    services              = ["application-default"]
    action                = "allow"
    tags                  = ["NOC-Team"]
  }
}

