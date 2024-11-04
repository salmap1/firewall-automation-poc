# noc/firewall_rules.tf

module "noc_firewall_rule" {
  source = "../modules/firewall_rules"

  rule_name            = "NOC-Allow-SSH"
  source_zones         = ["any"]
  destination_zones    = ["any"]
  source_addresses     = ["any"]
  destination_addresses = ["any"]
  applications         = ["ssh"]
  services             = ["tcp/22"]
  action               = "allow"
  description          = "NOC team rule to allow SSH"
  tags                 = ["NOC", "poc"]
}

