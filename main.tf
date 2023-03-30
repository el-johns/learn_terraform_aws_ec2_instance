terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "iamadmin-general"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04581fbf744a7d11f"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
