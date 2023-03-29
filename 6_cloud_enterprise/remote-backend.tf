terraform {
  cloud {
    organization = "Terraform-AWS-project"

    workspaces {
      name = "Backend"
    }
  }
}