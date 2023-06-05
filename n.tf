terraform {
  cloud {
    organization = "brentwoodruff"
    workspaces {
      name = "null"
    }
  }
}

resource "null_resource" "n" {
  triggers = {
    uuid = uuid()
  }

  provisioner "local-exec" {
    command = "ls -a"
  }
}
