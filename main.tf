provider "aws" {
  region     = "ap-southeast-2"
}
resource "aws_instance" "web1" {
#ami           = "ami-06e2b86bab2edf4ee"
ami           = "ami-0a4f913c1801e18a2"
instance_type = "t2.micro"
key_name   = "maternew"
tags = {
    Name = "Test-server-git"
}
}
output "pvt_ip"{
   value = aws_instance.web1.private_ip
}
output "pub_ip"{
   value = aws_instance.web1.public_ip
}
