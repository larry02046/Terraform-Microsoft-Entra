provider "azuread" {
  # Explicit tenant is often helpful; the ID is safe to pass by var or env.
  tenant_id = var.tenant_id
  # For OIDC, prefer environment-based auth populated by azure/login.
  # No client_secret is required.
}
