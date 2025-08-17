locals {
  owner = var.bussiness_unit
  enviornment = var.enviornment
  name = "${var.bussiness_unit}-${var.enviornment}"
  common_tags = {
    Owner       = local.owner
    Environment = local.enviornment
  }
}