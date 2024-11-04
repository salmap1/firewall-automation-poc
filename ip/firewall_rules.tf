# ip/firewall_rules.tf

module "ip_firewall_rule" {
  source = "../modules/firewall_rules"

  rule_name            = "IP-Allow-HTTPS"
  source_zones         = ["any"]
  destination_zones    = ["any"]
  source_addresses     = ["any"]
  destination_addresses = ["any"]
  applications         = ["ssl"]
  services             = ["tcp/443"]
  action               = "allow"
  description          = "IP team rule to allow HTTPS"
  tags                 = ["IP", "poc"]
}

