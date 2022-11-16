terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
  token = var.aws_session_token
   
}

resource "aws_vpc" "TKGVPC" {
    cidr_block = var.base_cidr_block

    tags = {
      "Name" = "TKGVPC2"
    }
}