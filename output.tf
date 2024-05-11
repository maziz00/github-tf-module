output "repo_name" {
  value = github_repository.repo.full_name
}

output "repo_id" {
  value = github_repository.repo.repo_id
}

output "repo_ssh" {
  value = github_repository.repo.ssh_clone_url
}

output "repo_http" {
  value = github_repository.repo.http_clone_url
}

output "repo" {
  value     = github_repository.repo[*]
  sensitive = true
}
