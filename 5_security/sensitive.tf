locals {
    password = {
        value = "abcd1234"
    }
}

output "password" {
  value = local.password
  sensitive = true
}