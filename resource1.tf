terraform {
  backend "s3" {
    bucket         = "sample-tf"
    region         = "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-table"
  }
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web" {
  ami           = "ami-123"
  instance_type = "t3.medium"
}
