resource "aws_instance" "example-nvirginia" {
    ami = var.aws_ec2_ami_nvirigina
    instance_type = var.aws_ec2_type
    key_name = var.aws_ec2_key
    vpc_security_group_ids = var.aws_ec2_sg
    provider = aws.us-east-1
    tags = var.aws_resource_name
}
resource "aws_instance" "example-ohio" {
    ami = var.aws_ec2_ami_ohio
    instance_type = var.aws_ec2_type
    provider = aws.us-east-2
    tags = var.aws_resource_name
}