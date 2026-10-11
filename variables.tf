variable "authenticated_origin_pulls_settings" {
  description = <<EOT
Map of authenticated_origin_pulls_settings, attributes below
Required:
    - enabled
    - zone_id
EOT

  type = map(object({
    enabled = bool
    zone_id = string
  }))
}

