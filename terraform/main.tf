# Example 1: A group.
resource "azuread_group" "id_engineers" {
  display_name      = "ID Engineers - ${var.environment}"
  mail_enabled      = false
  security_enabled  = true
  description       = "Engineering group for identity team (${var.environment})."
}

# Example 2: An application + service principal.
resource "azuread_application" "sample_app" {
  display_name = "sample-app-${var.environment}"
  owners       = [] # optionally add owners by objectId
  web {
    redirect_uris = ["https://localhost/auth/callback"]
  }

  # Example App Role
  app_roles = [{
    allowed_member_types = ["User"]
    description          = "Read data"
    display_name         = "Reader"
    id                   = "00000000-0000-0000-0000-000000000001"
    is_enabled           = true
    value                = "Reader"
  }]
}

resource "azuread_service_principal" "sample_sp" {
  application_id = azuread_application.sample_app.application_id
}

output "group_object_id" {
  value = azuread_group.id_engineers.object_id
}

output "app_client_id" {
  value = azuread_application.sample_app.application_id
}
