variable "objectstorage_replication_policies" {
  description = <<EOT
Map of objectstorage_replication_policies, attributes below
Required:
    - bucket
    - destination_bucket_name
    - destination_region_name
    - name
    - namespace
Optional:
    - delete_object_in_destination_bucket
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bucket                              = string
    destination_bucket_name             = string
    destination_region_name             = string
    name                                = string
    namespace                           = string
    delete_object_in_destination_bucket = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.objectstorage_replication_policies : (
        v.delete_object_in_destination_bucket == null || (contains([for v in ["ACCEPT"] : lower(v)], lower(v.delete_object_in_destination_bucket)))
      )
    ])
    error_message = "must be one of: \"ACCEPT\""
  }
}

