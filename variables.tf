variable "optimizer_histories_lookup" {
  description = <<EOT
Map of optimizer_histories_lookup, attributes below
Required:
    - compartment_id
    - compartment_id_in_subtree
Optional:
    - include_resource_metadata
    - name
    - recommendation_id
    - recommendation_name
    - resource_type
    - state
    - status
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    compartment_id_in_subtree = bool
    include_resource_metadata = optional(bool)
    name                      = optional(string)
    recommendation_id         = optional(string)
    recommendation_name       = optional(string)
    resource_type             = optional(string)
    state                     = optional(string)
    status                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

