provider "aws" {

}

# resource "aws_instance" "name" {
#     count = length(var.instance_name)
#     ami= var.ami
#     instance_type = var.instance_type
#     tags = {
#         Name = "${var.instance_name[count.index]}-server"
#     }
# }
# to see in the count
# output "count1" {
#     value=length(var.instance_name) 
# }

# another use case using maps

resource "aws_instance" "name" {
    ami= var.ami
    instance_type = var.instance_type
    tags = {
        Name= var.instance_name 
    }
}
#terraform apply -auto-approve  -var-file="dev.tfvars"
#terraform apply -auto-approve  -var-file="test.tfvars"
#terraform apply -auto-approve  -var-file="prod.tfvars"