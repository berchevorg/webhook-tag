resource "random_pet" "name" {
  length    = "3"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
