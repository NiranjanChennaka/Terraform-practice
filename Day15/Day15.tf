
# provider "aws"{

# }
# datablock
# locals {
#   env="dev"
# }
# resource "aws_instance" "name" {
#     ami="ami-07429253df5b3c976"
#     instance_type = "t3.micro"
#     tags = {
#       Name= "${local.env}-Instance"
#     }
# }

# terraform {
#   required_providers {
#     aws={
#         source = "hashicorp/aws"
#     }
#     azurerm{

#     }
#   }
# }
