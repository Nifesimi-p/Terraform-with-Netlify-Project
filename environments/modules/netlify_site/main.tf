terraform {
  required_providers {
    netlify = {
      source  = "aegirhealth/netlify"
      version = "~> 0.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}



resource "random_string" "site_suffix" {
  length  = 8
  special = false
  upper   = false
}


resource "netlify_site" "site" {
  name = "${var.site_name}-${random_string.site_suffix.result}"
}