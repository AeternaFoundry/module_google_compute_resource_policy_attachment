output "compute_resource_policy_attachments_id" {
  description = "Map of id values across all compute_resource_policy_attachments, keyed the same as var.compute_resource_policy_attachments except keys with no id are omitted"
  value       = { for k, v in google_compute_resource_policy_attachment.compute_resource_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_resource_policy_attachments_deletion_policy" {
  description = "Map of deletion_policy values across all compute_resource_policy_attachments, keyed the same as var.compute_resource_policy_attachments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_resource_policy_attachment.compute_resource_policy_attachments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_resource_policy_attachments_instance" {
  description = "Map of instance values across all compute_resource_policy_attachments, keyed the same as var.compute_resource_policy_attachments except keys with no instance are omitted"
  value       = { for k, v in google_compute_resource_policy_attachment.compute_resource_policy_attachments : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "compute_resource_policy_attachments_name" {
  description = "Map of name values across all compute_resource_policy_attachments, keyed the same as var.compute_resource_policy_attachments except keys with no name are omitted"
  value       = { for k, v in google_compute_resource_policy_attachment.compute_resource_policy_attachments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_resource_policy_attachments_project" {
  description = "Map of project values across all compute_resource_policy_attachments, keyed the same as var.compute_resource_policy_attachments except keys with no project are omitted"
  value       = { for k, v in google_compute_resource_policy_attachment.compute_resource_policy_attachments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_resource_policy_attachments_zone" {
  description = "Map of zone values across all compute_resource_policy_attachments, keyed the same as var.compute_resource_policy_attachments except keys with no zone are omitted"
  value       = { for k, v in google_compute_resource_policy_attachment.compute_resource_policy_attachments : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

