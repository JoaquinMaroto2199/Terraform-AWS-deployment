/*
provider "vault" {
    address = "..."
}

data "vault_generic_secret" "db_creds" {
    path = "db_creds"
}

output "dbcred_vault" {
    value = data.vault_generic_secret.db_creds
    sensitive = true
}
*/