variable "kms_secret_lookup" {
  description = <<EOT
Map of kms_secret_lookup, attributes below
Required:
    - ciphertext
    - crypto_key
Optional:
    - additional_authenticated_data
EOT

  type = map(object({
    ciphertext                    = string
    crypto_key                    = string
    additional_authenticated_data = optional(string)
  }))
}

