data "aws_ami" "ami_bastion_host" {
  most_recent      = true
  name_regex  = "^al2023-ami-2023.*-x86_64"
  owners      = ["amazon"]
}