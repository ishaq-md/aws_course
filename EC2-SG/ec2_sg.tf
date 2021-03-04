provider "aws" {
  region     = "us-east-1"

}

resource "aws_instance" "myec2" {
   ami = "ami-047a51fa27710816e"
   instance_type = "t2.micro"

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
