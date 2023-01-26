terraform {
  required_version = ">=0.12"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }

  backend "s3" {
    bucket = "tech-tops-project-tfstate"
    key    = "tech-tops-project-tfstate/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

