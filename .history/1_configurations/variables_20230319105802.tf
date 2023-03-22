variable "number_ec2_instances" {
    type = number
    default = 5
  
}

variable "elb_az" {

    type = list
}

variable "env_2" {
    type = list
    default = ["dev-env", "pre-env", "pro-env"]
}

variable "ec2_instance_type" {
    type = string
    default = "t2.micro"
}