variable "awsprops" {
    default = {
    region = "us-east-1"
    vpc = "vpc-54xx7d30"
    ami = "ami-07b48xxx1dcf0fb3e0"
    itype = "t2.micro"
    subnet = "subnet-b989xxce"
    publicip = true
    keyname = "new-key"
    secgroupname = "Subnet Access"
  }
}

provider "aws" {
  region = lookup(var.awsprops, "region")
}




resource "aws_instance" "project-iac" {
  ami = lookup(var.awsprops, "ami")
  instance_type = lookup(var.awsprops, "itype")
  subnet_id = lookup(var.awsprops, "subnet") #FFXsubnet2
  associate_public_ip_address = lookup(var.awsprops, "publicip")
  key_name = lookup(var.awsprops, "keyname")


  vpc_security_group_ids = [
    "sg-14exx073"
  ]
  
  tags = {
    Name ="test-instance"
    Environment = "new"
    OS = "aws-v2"
    Managed = "xx"
  }

}


output "ec2instance" {
  value = aws_instance.public_ip
}
