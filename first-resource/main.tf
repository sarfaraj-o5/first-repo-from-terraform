provider "github" {
  token = ""
}

resource "github_repository" "first_repo" {
  name        = "first-repo"
  description = "first resource"
  visibility  = "public"
  auto_init   = true
}
