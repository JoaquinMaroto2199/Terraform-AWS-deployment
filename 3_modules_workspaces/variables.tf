variable "number_ec2_instances" {
    type = number
    default = 5 
}

variable "ec2_instance_type" {
    type = map
    default = {
        default = "t2.nano"
        dev = "t2.micro"
        prod = "t2.large"
    }
}

variable "environment" {
    type = string
    default = "dev"
}
