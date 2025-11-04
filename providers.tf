# Optional: Remote state in Azure Storage
terraform {
  backend "azurerm" {
    # These can be hardcoded or provided via env vars in GH Actions
    # resource_group_name  = "rg-tfstate"
    # storage_account_name = "sttfstateYOURSUFFIX"
    # container_name       = "tfstate"
    # key                  = "entra-ca/terraform.tfstate"
  }
}

provider "azuread" {
  # Uses environment variables in CI:
  # ARM_CLIENT_ID, ARM_TENANT_ID, ARM_CLIENT_SECRET
  # or AAD_CLIENT_ID / AAD_TENANT_ID / AAD_CLIENT_SECRET (we’ll export as ARM_* in the workflow)
}
