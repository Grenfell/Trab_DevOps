terraform {
  backend "s3" {
    bucket = "trab-devops-07092022"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.28.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
  default_tags {
    tags = {
      Terraform   = "true"
      Environment = "${terraform.workspace}"
    }
  }
}
