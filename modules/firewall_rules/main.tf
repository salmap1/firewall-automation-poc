# modules/firewall_rules/main.tf

resource "panos_security_rule" "firewall_rule" {
  name                  = var.rule_name
  source_zones          = var.source_zones
  destination_zones     = var.destination_zones
  source_addresses      = var.source_addresses
  destination_addresses = var.destination_addresses
  applications          = var.applications
  services              = var.services
  action                = var.action
  description           = var.description
  tags                  = var.tags
}

