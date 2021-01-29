variable "iam_role_name" {
  description = "The name for the created role. Conceptually, this should correspond to a group."
  type        = string
}

variable "source_accounts" {
  description = "accounts that will be allowed to decrypt the shared AMIs. key should be the account name"
  type = map(object({
    id = string
  }))
}

variable "require_mfa" {
  description = "Whether the created policy will include MFA."
  type        = bool
  default     = false
}

variable "role_assumption_max_duration" {
  description = "Max duration that the assumed role is assumed for Must be between 3600 and 43200 (including)"
  type        = number
  default     = 3600
}

variable "mfa_condition" {
  description = "MFA condition method. Use either Bool or BoolIfExists"
  type        = string
  default     = "Bool"
}
