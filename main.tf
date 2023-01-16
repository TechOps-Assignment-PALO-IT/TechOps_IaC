resource "github_repository" "github_repos" {
  count      = length(var.github_repos)
  name       = var.github_repos[count.index]
  visibility = "public"
  auto_init  = true
}

resource "github_branch" "development" {
  count      = length(var.github_repos)
  repository = github_repository.github_repos[count.index].name
  branch     = "dev"
}

resource "github_branch_default" "default" {
  count      = length(var.github_repos)
  repository = github_repository.github_repos[count.index].name
  branch     = "main"
}

resource "github_branch_protection_v3" "branch_protection" {
  count      = length(var.github_repos)
  repository = github_repository.github_repos[count.index].name
  branch     = "main"

  required_pull_request_reviews {
    dismiss_stale_reviews = true
  }
}