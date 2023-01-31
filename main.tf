module "gitops" {
  source = "./modules/gitops"

  github_token = var.github_token
  github_owner = var.github_owner
  github_repos = var.github_repos
}