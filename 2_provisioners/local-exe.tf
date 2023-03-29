resource "aws_instance" "test_ec2deployment_local" {
    ami = data.aws_ami.latest.id
    instance_type = var.ec2_instance_type
    tags = {
        name = "Local EC2"
    }

    connection {
    type = "ssh"
    user = "Terraform"
    private_key = file("./terraform-key.pem")
    host = self.public_ip
    }

    provisioner "local-exec" {
        command = "echo ${aws_instance.test_ec2deployment_local.private_ip} >> private_ips.txt"
      
    }


}
