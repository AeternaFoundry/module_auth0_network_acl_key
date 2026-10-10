output "network_acl_keys_id" {
  description = "Map of id values across all network_acl_keys, keyed the same as var.network_acl_keys except keys with no id are omitted"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_acl_keys_alg" {
  description = "Map of alg values across all network_acl_keys, keyed the same as var.network_acl_keys except keys with no alg are omitted"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.alg if v.alg != null && length(v.alg) > 0 }
}
output "network_acl_keys_created_at" {
  description = "Map of created_at values across all network_acl_keys, keyed the same as var.network_acl_keys except keys with no created_at are omitted"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "network_acl_keys_fingerprint" {
  description = "Map of fingerprint values across all network_acl_keys, keyed the same as var.network_acl_keys except keys with no fingerprint are omitted"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "network_acl_keys_name" {
  description = "Map of name values across all network_acl_keys, keyed the same as var.network_acl_keys except keys with no name are omitted"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_acl_keys_updated_at" {
  description = "Map of updated_at values across all network_acl_keys, keyed the same as var.network_acl_keys except keys with no updated_at are omitted"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}

