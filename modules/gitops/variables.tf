variable "github_token" {
  description = "The Github token of the user or organization"
}

variable "github_owner" {
  description = "The GitHub owner or organization name"
  default = "TechOps-Assignment-PALO-IT"
}

variable "github_repos" {
  description = "A list of Github repository names"
  type        = list(string)
}