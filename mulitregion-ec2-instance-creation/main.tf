resource "aws_instance" "example-nvirginia" {
    ami = "ami-06aa3f7caf3a30282"
    instance_type = "t2.micro"
    key_name = "test_nvirginia"
    security_groups = [ "test_sg" ]
    provider=aws.us-east-1
}
resource "aws_instance" "example-ohio" {
    ami = "ami-07b36ea9852e986ad"
    instance_type = "t2.micro"
    provider=aws.us-east-2
}