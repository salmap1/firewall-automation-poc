# main.tf
resource "null_resource" "mock_firewall_rule" {
  provisioner "local-exec" {
    command = "echo 'Simulating adding a firewall rule: Allow TCP port 80 from 0.0.0.0/0'"
  }

  triggers = {
    # This can be used to make the resource dynamic for demo purposes
    rule_name = "allow_http"
  }
}

resource "null_resource" "mock_firewall_cleanup" {
  provisioner "local-exec" {
    command = "echo 'Simulating removal of a firewall rule: Allow TCP port 80 from 0.0.0.0/0'"
  }

  triggers = {
    rule_name = "allow_http"
  }

  # Make the cleanup dependent on the rule creation
  depends_on = [null_resource.mock_firewall_rule]
}

