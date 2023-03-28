resource "aws_instance" "test_ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = "t2.micro"
  tags = {
    name = "Initial EC2"
    }
}
