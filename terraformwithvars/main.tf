provider "aws" {
  region     = "ap-southeast-2"
}
resource "aws_instance" "web1" {
#ami           = "ami-06e2b86bab2edf4ee"
ami           = "ami-03131d9a8e6e8fad7"
instance_type = "var.my_instance_type"
key_name   = "maternew"
tags = {
    Name = "var.my_name"
    Environment = "var.my_env"
}
}
output "pvt_ip"{
   value = aws_instance.web1.private_ip
}
output "pub_ip"{
   value = aws_instance.web1.public_ip
}
