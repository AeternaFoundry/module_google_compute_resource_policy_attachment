variable "compute_resource_policy_attachments" {
  description = <<EOT
Map of compute_resource_policy_attachments, attributes below
Required:
    - instance
    - name
Optional:
    - deletion_policy
    - project
    - zone
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance        = string
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    zone            = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

