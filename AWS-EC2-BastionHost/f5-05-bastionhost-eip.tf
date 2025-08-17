resource "aws_eip" "bastion_host_eip" {
  instance = module.ec2_instance.id
  depends_on = [ module.vpc , module.ec2_instance ]
  tags = local.common_tags
}