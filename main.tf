resource "auth0_network_acl_key" "network_acl_keys" {
  for_each = var.network_acl_keys

  alg   = each.value.alg
  name  = each.value.name
  value = each.value.value
}

