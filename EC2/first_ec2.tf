provider "aws" {
  region     = "us-east-1"

}
provider "google" {
  project = "migcpproject"
  credentials = file("terraform.json")
  region  = "us-central1"
}

resource "aws_instance" "myec2" {
   ami = "ami-047a51fa27710816e"
   instance_type = "t2.micro"
}
