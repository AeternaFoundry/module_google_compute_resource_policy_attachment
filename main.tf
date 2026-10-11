resource "google_compute_resource_policy_attachment" "compute_resource_policy_attachments" {
  for_each = var.compute_resource_policy_attachments

  instance        = each.value.instance
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  zone            = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

