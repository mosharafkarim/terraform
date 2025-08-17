variable "instance_type" {
  description = "The type of EC2 instance to use for the bastion host."
  type        = string
  default     = "t3.micro"

}

variable "bastion_host_key" {
    description = "The name of the key pair to use for the bastion host."
    type        = string
    default     = "terraform-hands-on-key"
  
}