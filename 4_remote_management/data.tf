data "aws_ami" "latest" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-ecs-hvm-2.0.202*-x86_64-ebs"]
  }
}

data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
    bucket = "terraform-joaquin-bucket"
        key = "network/eip.tfstate"
        region = "eu-west-1"
  }
}