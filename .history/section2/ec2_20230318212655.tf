
resource "aws_instance" "test-ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = var.ec2_instance_type
  count = var.number_ec2_instances >= 3 ? 2 : 0
  tags = {
    name = "professor${count.index}"
  }

    ingress {
    description      = "Ingress access"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "Egress access"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}