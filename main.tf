terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAS2VS4LIL4XIEXUCM" 
  secret_key = "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" 
}

resource "aws_instance" "my_instance" {
  ami           = "ami-053b12d3152c0cc71"
  instance_type = "t2.micro"
  key_name      = "sample"
  tags = {
    env = terraform.workspace
  }
}
