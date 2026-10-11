resource "oci_objectstorage_replication_policy" "objectstorage_replication_policies" {
  for_each = var.objectstorage_replication_policies

  bucket                              = each.value.bucket
  destination_bucket_name             = each.value.destination_bucket_name
  destination_region_name             = each.value.destination_region_name
  name                                = each.value.name
  namespace                           = each.value.namespace
  delete_object_in_destination_bucket = each.value.delete_object_in_destination_bucket

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

