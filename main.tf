terraform {
  required_providers {
    netlify = {
      source = "netlify/netlify"  # Correct provider source
    }
  }

  backend "remote" {
    organization = "Precious-org"  # Replace with your Terraform Cloud organization name
    workspaces {
      name = "my-netlify-website"  # Replace with your workspace name in Terraform Cloud
    }
  }
}

provider "netlify" {
  access_token = var.netlify_token  # Use the token from terraform.tfvars
}

resource "netlify_site" "my_site" {
  name          = var.site_name
  custom_domain = var.custom_domain

  build {
    command = "npm run build"    # Adjust if no build step is required
    publish = "dist"             # Adjust to your site's output folder
  }
}

output "live_url" {
  value = netlify_site.my_site.url
}
