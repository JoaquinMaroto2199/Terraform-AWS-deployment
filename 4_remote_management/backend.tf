terraform {
    backend "s3" {
        bucket = "terraform-joaquin-bucket"
        key = "network/eip.tfstate"
        region = "eu-west-1"
    }
}