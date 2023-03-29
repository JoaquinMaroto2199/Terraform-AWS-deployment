variable "number_ec2_instances" {
    type = number
    default = 5 
}

variable "ec2_instance_type" {
    type = string
    default = "t2.micro"
}