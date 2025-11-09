variable "break_glass_group_object_id" {
  type        = string
  description = "Object ID of the Break-Glass group to exclude from CA policy."
}

# Optional trusted named location ID (object ID of the Named Location)
variable "trusted_named_location_id" {
  type        = string
  description = "Object ID of a trusted Named Location to exclude."
  default     = null
}
