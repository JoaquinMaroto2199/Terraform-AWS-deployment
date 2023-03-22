
resource "aws_instance" "test-ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = var.ec2_instance_type
  count = var.number_ec2_instances >= 3 ? 2 : 0
  tags = {
    name = "professor${count.index}"


  }
}