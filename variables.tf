variable "github_token" {
  sensitive = true
}
variable "github_owner" {
  sensitive = true
}
variable "name" {}
variable "description" {}
variable "visibility" {
  default = "internal"
}
variable "branch" {
  default = "master"
}