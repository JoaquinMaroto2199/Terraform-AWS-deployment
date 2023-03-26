resource "aws_instance" "test_ec2deployment" {
  ami = data.aws_ami.latest.id
  instance_type = lookup(var.ec2_instance_type, terraform.workspace)
  vpc_security_group_ids = [aws_security_group.ec2_secgroup.id]
  tags = {
    name = "Initial EC2"
    }
}

resource "aws_security_group" "ec2_secgroup" {
    name = "ec2_secgroup"

    ingress {
        from_port = 433
        to_port = 433
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }


    egress {
        from_port = 433
        to_port = 433
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
  
output "sg_id" {
    value = aws_security_group.ec2_secgroup.id
}