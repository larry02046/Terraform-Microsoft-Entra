variable "tenant_id"           { type = string }
variable "group_display_name"  { type = string }
variable "group_description"   { type = string  default = "Managed by Terraform" }
variable "group_owner_object_ids" {
  type    = list(string)
  default = []
}

# state backend vars (only if using azurerm backend)
variable "state_rg_name"   { type = string }
variable "state_sa_name"   { type = string }
variable "state_container" { type = string }
