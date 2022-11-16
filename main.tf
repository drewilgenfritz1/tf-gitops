terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}

data "external" "env" {
  program = ["${path.module}/env.sh"]
  
}

provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
  token = var.session_token
   
}

resource "aws_vpc" "TKGVPC" {
    cidr_block = var.base_cidr_block

    tags = {
      "Name" = "TKGVPC2"
    }
}