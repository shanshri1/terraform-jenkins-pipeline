provider "aws" {
  region = "eu-north-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
resource "aws_instance" "linux-VM" {

  ami             = "ami-0bfa6d0ea0fe2c5a1"
  instance_type   = "t3.micro"
  key_name        = "terraformkey"
  security_groups = ["default"]
  tags = {
    Name = "terraform"
  }
}
