# modules/firewall_rules/variables.tf

variable "rule_name" {
  description = "Name of the security rule"
  type        = string
}

variable "source_zones" {
  description = "List of source zones"
  type        = list(string)
  default     = ["any"]
}

variable "destination_zones" {
  description = "List of destination zones"
  type        = list(string)
  default     = ["any"]
}

variable "source_addresses" {
  description = "List of source addresses"
  type        = list(string)
  default     = ["any"]
}

variable "destination_addresses" {
  description = "List of destination addresses"
  type        = list(string)
  default     = ["any"]
}

variable "applications" {
  description = "List of applications"
  type        = list(string)
  default     = ["any"]
}

variable "services" {
  description = "List of services"
  type        = list(string)
  default     = ["application-default"]
}

variable "action" {
  description = "Action to be taken (allow/deny)"
  type        = string
  default     = "allow"
}

variable "description" {
  description = "Description of the rule"
  type        = string
  default     = "Firewall rule created via Terraform"
}

variable "tags" {
  description = "Tags for identifying rules"
  type        = list(string)
  default     = []
}

