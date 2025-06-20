provider "aws" {
region  = "us-east-1"
}

resource "aws_instance" "my_ec2" {
ami = "ami-09e6f87a47903347c"
instance_type = "t2.micro"


tags = {
    Name = "myec2"
}
}

terraform {
    backend "s3"{
    bucket = "vpcendpoint2312"
    key = "statefile"
    region = "us-east-1"
    dynamodb_table = "test"

    }
}
