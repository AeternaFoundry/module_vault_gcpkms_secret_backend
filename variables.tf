variable "gcpkms_secret_backends" {
  description = <<EOT
Map of gcpkms_secret_backends, attributes below
Required:
    - credentials_wo_version
    - path
Optional:
    - allowed_managed_keys
    - allowed_response_headers
    - audit_non_hmac_request_keys
    - audit_non_hmac_response_keys
    - credentials_wo
    - default_lease_ttl_seconds
    - delegated_auth_accessors
    - description
    - external_entropy_access
    - force_no_cache
    - identity_token_key
    - listing_visibility
    - local
    - max_lease_ttl_seconds
    - namespace
    - options
    - passthrough_request_headers
    - plugin_version
    - scopes
    - seal_wrap
EOT

  type = map(object({
    credentials_wo_version       = number
    path                         = string
    allowed_managed_keys         = optional(set(string))
    allowed_response_headers     = optional(list(string))
    audit_non_hmac_request_keys  = optional(list(string))
    audit_non_hmac_response_keys = optional(list(string))
    credentials_wo               = optional(string)
    default_lease_ttl_seconds    = optional(number)
    delegated_auth_accessors     = optional(list(string))
    description                  = optional(string)
    external_entropy_access      = optional(bool)
    force_no_cache               = optional(bool)
    identity_token_key           = optional(string)
    listing_visibility           = optional(string)
    local                        = optional(bool)
    max_lease_ttl_seconds        = optional(number)
    namespace                    = optional(string)
    options                      = optional(map(string))
    passthrough_request_headers  = optional(list(string))
    plugin_version               = optional(string)
    scopes                       = optional(set(string))
    seal_wrap                    = optional(bool)
  }))
}

