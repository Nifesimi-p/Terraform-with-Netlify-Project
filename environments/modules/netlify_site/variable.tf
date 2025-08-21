variable "site_name" {
  description = "Name for your Netlify site"
  type        = string
}

variable "site_description" {
  description = "Description of your site"
  type        = string
  default     = "Paradigm-shift"
}

variable "site_directory" {
  description = "Directory containing the static site files"
  type        = string
  default     = "./site"
}

variable "custom_domain" {
  description = "Custom domain for the site (optional)"
  type        = string
  default     = null
}





variable "deploy_message" {
  description = "Message for the deployment"
  type        = string
  default     = "Deployed via Terraform"
}