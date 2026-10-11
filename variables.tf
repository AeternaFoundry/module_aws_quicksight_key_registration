variable "quicksight_key_registrations" {
  description = <<EOT
Map of quicksight_key_registrations, attributes below
Optional:
    - aws_account_id
    - region
    - key_registration (block):
        - default_key (optional)
        - key_arn (required)
EOT

  type = map(object({
    aws_account_id = optional(string)
    region         = optional(string)
    key_registration = optional(list(object({
      default_key = optional(bool)
      key_arn     = string
    })))
  }))
}

