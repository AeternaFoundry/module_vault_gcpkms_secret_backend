resource "vault_gcpkms_secret_backend" "gcpkms_secret_backends" {
  for_each = var.gcpkms_secret_backends

  credentials_wo_version       = each.value.credentials_wo_version
  path                         = each.value.path
  allowed_managed_keys         = each.value.allowed_managed_keys
  allowed_response_headers     = each.value.allowed_response_headers
  audit_non_hmac_request_keys  = each.value.audit_non_hmac_request_keys
  audit_non_hmac_response_keys = each.value.audit_non_hmac_response_keys
  credentials_wo               = each.value.credentials_wo
  default_lease_ttl_seconds    = each.value.default_lease_ttl_seconds
  delegated_auth_accessors     = each.value.delegated_auth_accessors
  description                  = each.value.description
  external_entropy_access      = each.value.external_entropy_access
  force_no_cache               = each.value.force_no_cache
  identity_token_key           = each.value.identity_token_key
  listing_visibility           = each.value.listing_visibility
  local                        = each.value.local
  max_lease_ttl_seconds        = each.value.max_lease_ttl_seconds
  namespace                    = each.value.namespace
  options                      = each.value.options
  passthrough_request_headers  = each.value.passthrough_request_headers
  plugin_version               = each.value.plugin_version
  scopes                       = each.value.scopes
  seal_wrap                    = each.value.seal_wrap
}

