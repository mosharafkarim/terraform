module "ec2_instance" {
  source = "./modules/ec2-instance"
  ami_value = "ami-06aa3f7caf3a30282"
  instance_type_value = "t3.micro"
  security_groups_value = ["test_sg"]
}