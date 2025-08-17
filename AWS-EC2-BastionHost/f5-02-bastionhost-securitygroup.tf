module "public_bastion_host_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  name        = "${local.name}-bastion-host-sg"
  description = "Security group for ssh access to the bastion host"
  vpc_id      = module.vpc.vpc_id

  ingress_rules            = ["ssh-tcp"]
  ingress_cidr_blocks      = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags = local.common_tags
}