terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "my-tf-samplebucket3423456"
  versioning {
        enabled = "true"
  }
  tags = {
    Name        = "dhanubucket1234678"
    Environment = "Dev"
  }
}
