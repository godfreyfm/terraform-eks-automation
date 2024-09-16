terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  profile = "default"
  assume_role {
    role_arn = var.role_arn
  }
  region = var.region
}