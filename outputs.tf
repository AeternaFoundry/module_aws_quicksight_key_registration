output "quicksight_key_registrations_aws_account_id" {
  description = "Map of aws_account_id values across all quicksight_key_registrations, keyed the same as var.quicksight_key_registrations"
  value       = { for k, v in aws_quicksight_key_registration.quicksight_key_registrations : k => v.aws_account_id if v.aws_account_id != null && length(v.aws_account_id) > 0 }
}
output "quicksight_key_registrations_key_registration" {
  description = "Map of key_registration values across all quicksight_key_registrations, keyed the same as var.quicksight_key_registrations"
  value       = { for k, v in aws_quicksight_key_registration.quicksight_key_registrations : k => v.key_registration if v.key_registration != null && length(v.key_registration) > 0 }
}
output "quicksight_key_registrations_region" {
  description = "Map of region values across all quicksight_key_registrations, keyed the same as var.quicksight_key_registrations"
  value       = { for k, v in aws_quicksight_key_registration.quicksight_key_registrations : k => v.region if v.region != null && length(v.region) > 0 }
}

