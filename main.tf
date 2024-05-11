resource "github_repository" "repo" {
  name             = var.name
  description      = var.description
  auto_init        = true
  license_template = "mit"
  visibility       = var.visibility
}

resource "github_branch" "master" {
  depends_on = [github_repository.repo]
  repository = github_repository.repo.name
  branch     = var.branch
}

resource "github_branch_default" "default" {
  depends_on = [github_branch.master]
  repository = github_repository.repo.name
  branch     = github_branch.master.branch
}