output "site_url" {
  description = "The URL of the deployed Netlify site"
  value       = module.netlify_site.site_url
}

output "site_name" {
  description = "The name of the Netlify site"
  value       = module.netlify_site.site_name
}

output "site_id" {
  description = "The ID of the Netlify site"
  value       = module.netlify_site.site_id
}

output "deployment_url" {
  description = "The deployment URL for the site"
  value       = module.netlify_site.deployment_url
}

output "random_suffix" {
  description = "The random suffix used for the site name"
  value       = module.netlify_site.random_suffix
}

output "custom_domain" {
  description = "The custom domain if configured"
  value       = module.netlify_site.custom_domain
}