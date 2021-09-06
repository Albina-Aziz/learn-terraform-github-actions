terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 0.14"

  backend "remote" {
    organization = "hyltest"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}


provider "aws" {
  region = "us-east-1
}





resource "aws_instance" "web" {
  ami                    = "ami-03295ec1641924349"
  instance_type          = "t2.micro"
  
}




