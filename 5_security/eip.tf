resource "aws_eip" "myeip01" {
    vpc = "true"
    //provider = "aws.dublin"
}

resource "aws_eip" "myeip02" {
    vpc = "true"
    //provider = "aws.london"
}