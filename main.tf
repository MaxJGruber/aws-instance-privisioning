provider "aws" {
  region = var.region
}


resource "aws_instance" "ec2" {
  count         = var.quantity
  ami           = var.AMI_type == "ubuntu" ? "ami-02d7ced41dff52ebc" : "ami-0a411b25a0dc707f3"
  instance_type = "t2.micro"
  key_name      = "paris-key-max"

  tags = {
    Name = "Max-Instance-${count.index + 1}"
  }
}

output "web_ip_map" {
  description = "The public IP addresses of the EC2 instances"
  value = { for i in aws_instance.ec2 : i.tags.Name => i.public_ip }
}
