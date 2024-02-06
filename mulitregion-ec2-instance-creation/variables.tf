variable "aws_ec2_ami_nvirigina" {
    description = "Ami of ec2 instance"
    type=string
}
variable "aws_resource_name" {
  description = "Name of the resource"
  type = map
}
variable "aws_ec2_ami_ohio" {
    description = "Ami of ec2 instance"
    type = string
}
variable "aws_ec2_type" {
    description = "Type of ec2 instance"
    type = string
}
variable "aws_ec2_key" {
    description = "Kaypair of ec2 instance"
    type = string
}
variable "aws_ec2_sg" {
    description = "Security group of ec2 instance"
    type = list
}
