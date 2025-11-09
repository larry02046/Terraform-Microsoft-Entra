resource "azuread_group" "tf_example" {
  display_name            = var.group_display_name
  description             = var.group_description
  mail_enabled            = false
  security_enabled        = true
  prevent_duplicate_names = true

}

output "group_object_id" {
  value = azuread_group.tf_example.object_id
}
