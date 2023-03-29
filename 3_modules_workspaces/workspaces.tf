module "ec2_cluster" {
    source = "terraform-aws-modules/ec2-instance/aws"

    name = "first_ec2_cluster"
    #instance_count = 1

    ami = data.aws_ami.latest.id
    instance_type = lookup(var.ec2_instance_type, terraform.workspace)

    tags = {
        Terraform = "true"
    }
    
}