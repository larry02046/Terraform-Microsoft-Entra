provider "azuread" {
  # With OIDC, provider reads ARM_* env vars set by the workflow.
  # Optionally pin tenant_id:
  tenant_id = var.tenant_id
}

resource "azuread_group" "example" {
  display_name            = var.group_display_name
  description             = var.group_description
  mail_enabled            = false
  security_enabled        = true
  prevent_duplicate_names = true

}