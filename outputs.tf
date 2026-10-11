output "authenticated_origin_pulls_settings_id" {
  description = "Map of id values across all authenticated_origin_pulls_settings, keyed the same as var.authenticated_origin_pulls_settings except keys with no id are omitted"
  value       = { for k, v in cloudflare_authenticated_origin_pulls_settings.authenticated_origin_pulls_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "authenticated_origin_pulls_settings_enabled" {
  description = "Map of enabled values across all authenticated_origin_pulls_settings, keyed the same as var.authenticated_origin_pulls_settings except keys with no enabled are omitted"
  value       = { for k, v in cloudflare_authenticated_origin_pulls_settings.authenticated_origin_pulls_settings : k => v.enabled if v.enabled != null }
}
output "authenticated_origin_pulls_settings_zone_id" {
  description = "Map of zone_id values across all authenticated_origin_pulls_settings, keyed the same as var.authenticated_origin_pulls_settings except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_authenticated_origin_pulls_settings.authenticated_origin_pulls_settings : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

