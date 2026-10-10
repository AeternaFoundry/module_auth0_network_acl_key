variable "network_acl_keys" {
  description = <<EOT
Map of network_acl_keys, attributes below
Required:
    - alg
    - name
    - value
EOT

  type = map(object({
    alg   = string
    name  = string
    value = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_acl_keys : (
        length(v.name) >= 1 && length(v.name) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_acl_keys : (
        contains(["hmac-sha256"], v.alg)
      )
    ])
    error_message = "must be one of: \"hmac-sha256\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

