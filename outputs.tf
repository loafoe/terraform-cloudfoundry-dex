output "dex_endpoint" {
  description = "The Caddy proxy endpoint"
  value       = cloudfoundry_route.dex.endpoint
}
