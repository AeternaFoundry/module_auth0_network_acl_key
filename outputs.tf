output "network_acl_keys_id" {
  description = "Map of id values across all network_acl_keys, keyed the same as var.network_acl_keys"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.id }
}
output "network_acl_keys_alg" {
  description = "Map of alg values across all network_acl_keys, keyed the same as var.network_acl_keys"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.alg }
}
output "network_acl_keys_created_at" {
  description = "Map of created_at values across all network_acl_keys, keyed the same as var.network_acl_keys"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.created_at }
}
output "network_acl_keys_fingerprint" {
  description = "Map of fingerprint values across all network_acl_keys, keyed the same as var.network_acl_keys"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.fingerprint }
}
output "network_acl_keys_name" {
  description = "Map of name values across all network_acl_keys, keyed the same as var.network_acl_keys"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.name }
}
output "network_acl_keys_updated_at" {
  description = "Map of updated_at values across all network_acl_keys, keyed the same as var.network_acl_keys"
  value       = { for k, v in auth0_network_acl_key.network_acl_keys : k => v.updated_at }
}

