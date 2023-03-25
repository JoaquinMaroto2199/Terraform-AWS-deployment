resource "aws_instance" "test_ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = var.environment != "prod" ? var.ec2_instance_type_t2micro : var.ec2_instance_type_t2large
  vpc_security_group_ids = [aws_security_group.ec2_secgroup.id]
  tags = {
    name = "Initial EC2"
    }
}

resource "aws_security_group" "ec2_secgroup" {
    name = "ec2_secgroup"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }


    egress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
  
output "sg_id" {
    value = aws_security_group.ec2_secgroup.id
}