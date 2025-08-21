# Call the Netlify site module
module "netlify_site" {
  source = "../modules/netlify_site"

  site_name        = var.site_name
  site_description = var.site_description
  site_directory   = var.site_directory
  custom_domain    = var.custom_domain
  deploy_message   = var.deploy_message
}


