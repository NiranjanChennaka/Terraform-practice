provider "aws" { }

variable "ami" { }
variable "instance_type" { }
variable "instance_name" { }

module "sample-ec2" {
    ami= var.ami
    instance_name = var.instance_name
    instance_type = var.instance_type
     source = "./modules/ec2"
}

module "sample-s3" {
    source = "./modules/s3"
  
}

#>> terraform apply -auto-approve -var-file="./modules/ec2/dev.tfvars"
