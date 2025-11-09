# Example 1: A group.
resource "azuread_group" "id_engineers" {
  display_name      = "ID Engineers - Dev"
  mail_enabled      = false
  security_enabled  = true
  description       = "Engineering group for identity team."
}

