provider "aws" {
  region = "us-east-1"
}

data "aws_security_group" "monitoring_sg" {
  name = "Monitoring Pro,Gra,Alert &PushGateway"
}

resource "aws_instance" "monitoring" {
  ami           = "ami-07429253df5b3c976"  # My Custom own AMi or Golden AMI
  instance_type = "t3.micro"

  vpc_security_group_ids = [
    data.aws_security_group.monitoring_sg.id
  ]

  tags = {
    Name = "Monitoring Prome,Gra,Alert Push Gate"
  }
}