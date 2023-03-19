
resource "aws_instance" "test-ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = var.ec2_instance_type
  count = var.number_ec2_instances >= 3 ? 2 : 0
  tags = {
    name = "professor${count.index}"
  }
}

resource "aws_security_group" "demo-sg" {
  name = "sec-grp"
  description = "Allow HTTP and SSH traffic via Terraform"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }