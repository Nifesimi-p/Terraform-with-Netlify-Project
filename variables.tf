variable "netlify_token" {
  description = "Netlify API token"
  type        = string
  sensitive   = true
}

variable "site_name" {
  description = "The name of the Netlify site"
  type        = string
}

variable "custom_domain" {
  description = "Custom domain for the site"
  type        = string
  default     = ""
}
