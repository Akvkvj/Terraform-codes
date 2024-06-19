provider "aws" {
  region = "us-east-2"
  access_key ="7"
  secret_key ="9"
}


terraform {
    backend "s3" {
        bucket = "my1stbucki"
        key    = "key/terraform.tfstate"
        region  = "us-east-2"

  
        
    }
}


resource "aws_instance" "ec2_example" {

    ami = "ami-0df12dffbea3533f7" 

    instance_type = "t2.micro"

    tags = {
      Name = "EC2 Instance with remote state"
    }
}