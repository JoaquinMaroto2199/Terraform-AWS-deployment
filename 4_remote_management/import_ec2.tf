resource "aws_instance" "web_instance" {
    ami = "ami-00169914e6299b8e0"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-030267ea368f7d49e"]
    key_name = "terraform-key"
    tags = {
        name = "terraform-manual-ec2"
    }

}