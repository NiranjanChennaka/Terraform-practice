provider "aws" {
  
}

resource "aws_instance" "name" {
    ami="ami-07429253df5b3c976"
    instance_type = "t3.micro"
    tags = {
      Name="qa_ Instance"
    }
  
}
terraform {
  backend "s3" {
    bucket = "state-file-111" # you have to create the Bucket in S3 with vesion enabled also you cannot reference the bucket in backend if you try to reference it will give the error 
    key = "terraform.tfstate"
    use_lockfile = true
    region = "us-east-1"
  }
}
terraform {
  backend "local" {
    path = "terraform.tfstate"
    
  }
}