terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.9.0" # Specify the version you want to use
    }
  }

  required_version = ">= 0.13"
}

provider "panos" {
  hostname = "10.255.49.67"
  username = "salmap"
  password = "Plum@7890"
}

resource "panos_security_rule" "allow_http" {
  name        = "Allow HTTP"
  source_zones = ["trust"]
  source_addresses = ["any"]
  destination_zones = ["untrust"]
  destination_addresses = ["any"]
  application = ["web-browsing"]
  service     = ["application-default"]
  action      = "allow"
}

