terraform {
  required_version = ">= 1.0"

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