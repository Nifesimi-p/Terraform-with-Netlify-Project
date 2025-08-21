output "site_url" {
  description = "The URL of the deployed Netlify site"
  value       = "https://${netlify_site.site.name}.netlify.app"
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = netlify_site.site.name
}

output "site_id" {
  description = "The ID of the Netlify site"
  value       = netlify_site.site.id
}

output "deployment_url" {
  description = "The deployment URL for the site"
  value       = "https://${netlify_site.site.name}.netlify.app"
}

output "random_suffix" {
  description = "The random suffix used for the site name"
  value       = random_string.site_suffix.result
}

output "custom_domain" {
  description = "The custom domain if configured"
  value       = var.custom_domain
}