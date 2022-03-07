terraform {
  cloud {
    organization = "brentwoodruff"
    workspaces {
      name = "null"
    }
  }
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.0.0"
    }
  }
}

resource "null_resource" "n" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "ls -a"
    #command = "cat *.tf.json"
    #command = "python3 -c 'print(\"hello world\")'"
    #command = "command -v vault"
    #command = "cat /etc/resolv.conf"
    #command = "host app.terraform.io"
    #command = "free -m"
    #command = "cat .terraform.lock.hcl"
  }
}
