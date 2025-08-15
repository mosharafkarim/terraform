data "aws_availability_zones" "available" {

}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr
  # azs             = var.vpc_azs
  azs = data.aws_availability_zones.available.names
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  create_database_subnet_group = var.vpc_create_database_subnet_group
  database_subnets = var.vpc_database_subnets
  
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support = var.vpc_enable_dns_support

  public_subnet_tags = {
    Type = "public-subnets"
  }
  private_subnet_tags = {
    Type = "private-subnets"
  }
  database_subnet_tags = {
    Type = "database-subnets"
  }
  tags = {
    Owner       = local.owner
    Environment = local.enviornment
  }

  vpc_tags = {
    Name = "${local.name}-${var.vpc_name}"
  }
}