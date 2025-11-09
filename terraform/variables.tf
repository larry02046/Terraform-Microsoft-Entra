variable "tenant_id" {
  description = "Microsoft Entra tenant ID (GUID)."
  type        = string
}

# Only if you use client-secret auth:
variable "client_id" {
  description = "App registration (client) ID."
  type        = string
  default     = null
}

variable "client_secret" {
  description = "App registration client secret."
  type        = string
  sensitive   = true
  default     = null
}

variable "environment" {
  description = "Environment label (e.g., dev, test, prod)."
  type        = string
  default     = "dev"
}
