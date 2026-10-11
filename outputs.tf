output "kms_secret_lookup_id" {
  description = "Map of id values across all kms_secret_lookup, keyed the same as var.kms_secret_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_kms_secret.kms_secret_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_secret_lookup_additional_authenticated_data" {
  description = "Map of additional_authenticated_data values across all kms_secret_lookup, keyed the same as var.kms_secret_lookup except keys with no additional_authenticated_data are omitted"
  value       = { for k, v in data.google_kms_secret.kms_secret_lookup : k => v.additional_authenticated_data if v.additional_authenticated_data != null && length(v.additional_authenticated_data) > 0 }
}
output "kms_secret_lookup_ciphertext" {
  description = "Map of ciphertext values across all kms_secret_lookup, keyed the same as var.kms_secret_lookup except keys with no ciphertext are omitted"
  value       = { for k, v in data.google_kms_secret.kms_secret_lookup : k => v.ciphertext if v.ciphertext != null && length(v.ciphertext) > 0 }
}
output "kms_secret_lookup_crypto_key" {
  description = "Map of crypto_key values across all kms_secret_lookup, keyed the same as var.kms_secret_lookup except keys with no crypto_key are omitted"
  value       = { for k, v in data.google_kms_secret.kms_secret_lookup : k => v.crypto_key if v.crypto_key != null && length(v.crypto_key) > 0 }
}
output "kms_secret_lookup_plaintext" {
  description = "Map of plaintext values across all kms_secret_lookup, keyed the same as var.kms_secret_lookup except keys with no plaintext are omitted"
  value       = { for k, v in data.google_kms_secret.kms_secret_lookup : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
  sensitive   = true
}

