
terraform {
  backend "remote" {
    organization = "berchevorg"

    workspaces {
      name = "webhook-tag"
    }
  }
}

resource "random_pet" "name" {
  length    = "9"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
