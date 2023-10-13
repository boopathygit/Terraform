provider "aws" {
  region     = "ap-southeast-2"
}
resource "aws_instance" "web1" {
#ami           = "ami-06e2b86bab2edf4ee"
ami           = "ami-03131d9a8e6e8fad7"
instance_type = "t2.micro"
key_name   = "maternew"
tags = {
    Name = "Test-server-git"
}
}
