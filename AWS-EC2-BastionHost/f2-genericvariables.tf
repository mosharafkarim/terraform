variable "region" {
  description = "The AWS region where the resources will be created."
  type        = string
  default     = "us-west-1"
}

variable "enviornment" {
    description = "The environment for the resources (e.g., dev, prod)."
    type        = string
    default     = "dev"  
}

variable "bussiness_unit" {
    description = "The business unit for the resources."
    type        = string
    default     = "HR"
}