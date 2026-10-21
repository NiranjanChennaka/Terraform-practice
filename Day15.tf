
provider "aws"{

}
# local block
locals {
  env="dev"
}
resource "aws_instance" "name" {
    ami="ami-07429253df5b3c976"
    instance_type = "t3.micro"
    tags = {
      Name= "${local.env}-Instance"
    }
}

# Terraform block
terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
    }
    azurerm{

    }
  }
}
