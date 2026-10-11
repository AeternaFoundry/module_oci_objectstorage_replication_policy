output "objectstorage_replication_policies_id" {
  description = "Map of id values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no id are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "objectstorage_replication_policies_bucket" {
  description = "Map of bucket values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no bucket are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "objectstorage_replication_policies_delete_object_in_destination_bucket" {
  description = "Map of delete_object_in_destination_bucket values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no delete_object_in_destination_bucket are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.delete_object_in_destination_bucket if v.delete_object_in_destination_bucket != null && length(v.delete_object_in_destination_bucket) > 0 }
}
output "objectstorage_replication_policies_destination_bucket_name" {
  description = "Map of destination_bucket_name values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no destination_bucket_name are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.destination_bucket_name if v.destination_bucket_name != null && length(v.destination_bucket_name) > 0 }
}
output "objectstorage_replication_policies_destination_region_name" {
  description = "Map of destination_region_name values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no destination_region_name are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.destination_region_name if v.destination_region_name != null && length(v.destination_region_name) > 0 }
}
output "objectstorage_replication_policies_name" {
  description = "Map of name values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no name are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "objectstorage_replication_policies_namespace" {
  description = "Map of namespace values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no namespace are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "objectstorage_replication_policies_status" {
  description = "Map of status values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no status are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.status if v.status != null && length(v.status) > 0 }
}
output "objectstorage_replication_policies_status_message" {
  description = "Map of status_message values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no status_message are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.status_message if v.status_message != null && length(v.status_message) > 0 }
}
output "objectstorage_replication_policies_time_created" {
  description = "Map of time_created values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no time_created are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "objectstorage_replication_policies_time_last_sync" {
  description = "Map of time_last_sync values across all objectstorage_replication_policies, keyed the same as var.objectstorage_replication_policies except keys with no time_last_sync are omitted"
  value       = { for k, v in oci_objectstorage_replication_policy.objectstorage_replication_policies : k => v.time_last_sync if v.time_last_sync != null && length(v.time_last_sync) > 0 }
}

