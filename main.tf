# Specify the correct provider source for Netlify
terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"  # Correct provider source
      version = "~> 1.0"           # Specify the version if needed
    }
  }

  # Configure HCP backend for Terraform state storage
  backend "remote" {
    organization = "Precious-org"  # Your Terraform Cloud organization name
    workspaces {
      name = "my-netlify-website"  # Your workspace name in Terraform Cloud
    }
  }
}

# Configure the Netlify provider
provider "netlify" {
  access_token = var.netlify_token  # Your Netlify API token (ensure it's set in terraform.tfvars)
}

# Resource to create the Netlify site
resource "netlify_site" "my_site" {
  name          = var.site_name    # Define the site name as a variable
  custom_domain = var.custom_domain  # Optional: Use a custom domain if you have one

  build {
    command = "npm run build"    # If needed, adjust for your site's build process
    publish = "dist"             # Define where the site files are located after build
  }
}

# Output the live URL of the deployed site
output "live_url" {
  value = netlify_site.my_site.url
}
