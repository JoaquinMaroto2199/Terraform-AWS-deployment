resource "aws_instance" "test_ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = var.ec2_instance_type
  tags = {
    name = "Initial EC2"
    }
}