terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = "eu-north-1"
  access_key = "AKIARUYN6ESMAKMMQNB6"
  secret_key = "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"
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
