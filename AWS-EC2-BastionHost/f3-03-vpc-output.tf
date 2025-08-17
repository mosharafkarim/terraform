output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_azs" {
  description = "A list of availability zones specified as argument to this module"
  value       = module.vpc.azs
}

output "vpc_private_subnets" {
  description = "The private subnets in the VPC"
  value       = module.vpc.private_subnets
}

output "vpc_public_subnets" {
  description = "The public subnets in the VPC"
  value       = module.vpc.public_subnets
}

output "vpc_database_subnets" {
  description = "The database subnets in the VPC"
  value       = module.vpc.database_subnets
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}
