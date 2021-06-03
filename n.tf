terraform {
  backend "remote" {
    organization = "brentwoodruff"
    workspaces {
      name = "foo"
    }
  }
}

resource "null_resource" "n" {}
resource "null_resource" "n2" {}
resource "null_resource" "n3" {}
