# Example 1: A group.
resource "azuread_group" "id_engineers" {
  display_name      = "ID Engineers - ${var.environment}"
  mail_enabled      = false
  security_enabled  = true
  description       = "Engineering group for identity team (${var.environment})."
}

output "group_object_id" {
  value = azuread_group.id_engineers.object_id
}

output "app_client_id" {
  value = azuread_application.sample_app.application_id
}
