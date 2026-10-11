resource "cloudflare_authenticated_origin_pulls_settings" "authenticated_origin_pulls_settings" {
  for_each = var.authenticated_origin_pulls_settings

  enabled = each.value.enabled
  zone_id = each.value.zone_id
}

