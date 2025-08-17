module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.0.2"

  name = "${local.name}-bastion-host"

  instance_type = var.instance_type
  key_name = var.bastion_host_key
  # monitoring    = true
  subnet_id     = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_host_sg.security_group_id]
  ami = data.aws_ami.ami_bastion_host.id

  tags = local.common_tags
}