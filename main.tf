# Terraform Provider Configuration
provider "netlify" {
  access_token = var.netlify_token
}

# Configure HCP backend for Terraform state storage
terraform {
  backend "remote" {
    organization = "Precious-org"
    workspaces {
      name = "my-netlify-website"
    }
  }
}

# Resource to create the Netlify site
resource "netlify_site" "my_site" {
  name = var.site_name
  custom_domain = var.custom_domain

  build {
    command = "npm run build"
    publish = "dist"
  }
}

# Output the URL of the deployed site
output "live_url" {
  value = netlify_site.my_site.url
}
