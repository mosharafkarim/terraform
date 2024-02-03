provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "first-ec2" {
    ami = "ami-06aa3f7caf3a30282"
    instance_type = "t2.micro"
    key_name = "test_nvirginia"
    security_groups = [ "test_sg" ]
}