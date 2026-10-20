# Day 13
provider "aws" {
    region = "us-east-1"

}
    resource aws_instance "abc"{
        for_each = toset(["dev"])
        ami= "ami-07429253df5b3c976"
        instance_type= "t3.micro"
        tags={
            Name="${each.value}"
        }
        lifecycle {
            prevent_destroy = false
            ignore_changes = [ tags,ami,instance_type ]
            create_before_destroy = true
    
        }
    }
    resource "aws_s3_bucket" "Bucket1" {
        depends_on = [ aws_instance.abc ]
        bucket = "demo-bucket-2026-27"
      
    }