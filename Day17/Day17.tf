provider "aws" {

}

resource "aws_instance" "name" {
    ami= var.ami
    instance_type = var.instance_type
    tags = {
        Name= var.instance_name 
    }
}

output "sample" {
    value = var.instance_name
  
}
#terraform apply -auto-approve  -var-file="dev.tfvars"
#terraform apply -auto-approve  -var-file="test.tfvars"
#terraform apply -auto-approve  -var-file="prod.tfvars"