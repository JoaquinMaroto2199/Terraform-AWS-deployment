variable "number_ec2_instances" {
    type = number
    default = 5 
}

variable "ec2_instance_type_t2micro" {
    type = string
    default = "t2.micro"
}

variable "ec2_instance_type_t2large" {
    type = string
    default = "t2.large"
}

variable "environment" {
    type = string
    default = "dev"
}
