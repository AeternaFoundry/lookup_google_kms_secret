data "google_kms_secret" "kms_secret_lookup" {
  for_each = var.kms_secret_lookup

  ciphertext                    = each.value.ciphertext
  crypto_key                    = each.value.crypto_key
  additional_authenticated_data = each.value.additional_authenticated_data
}

