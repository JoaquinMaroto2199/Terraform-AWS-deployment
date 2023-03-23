/*
resource "aws_instance" "test_ec2deployment_remoteter" {
    ami = data.aws_ami.latest.id
    instance_type = var.ec2_instance_type
    tags = {
        name = "Remote EC2"
    }

    connection {
    type = "ssh"
    user = "Terraform"
    private_key = file("./terraform-key.pem")
    host = self.public_ip
    }

    provisioner "remote-exec-linux" {
        inline = [
            "sudo amazon-linux-extras install -y nginx1",
            "sudo sustemctl start nginx"
        ]
      
    }


}
*/