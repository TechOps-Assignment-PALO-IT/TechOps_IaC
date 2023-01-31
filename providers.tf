terraform {
  required_version = ">=0.12"

  backend "s3" {
    bucket = "tech-tops-project-tfstate"
    key    = "tech-tops-project-tfstate/terraform.tfstate"
    region = "us-east-1"
  }
}
