resource "null_resource" "copy_ec2_key" {

  depends_on = [ module.ec2_instance ]
  connection {
    type        = "ssh"
    user        = "ec2-user"
    host        = aws_eip.bastion_host_eip.public_ip
    private_key = file("/Private-Key/terraform-hands-on-key.pem")
  }

    provisioner "file" {
        source      = "Private-Key/terraform-hands-on-key.pem"
        destination = "/tmp/terraform-hands-on-key.pem"
    }
    provisioner "remote-exec" {
      
      inline = [ 
        "chmod 400 /tmp/terraform-hands-on-key.pem"
       ]
    }
    provisioner "local-exec" {

      command = "echo VPC create at `date` with VPC ID: ${module.vpc.vpc_id} >> creation-of-vpc-with-id.txt"
      working_dir = "Local-Execution/"
    }
}