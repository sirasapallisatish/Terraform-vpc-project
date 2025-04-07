terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "local" {}
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source = "./networking" 

  aws_region           = var.aws_region
  env                  = var.env
  vpc_cidr             = var.vpc_cidr
  public_subnet_count  = 2
  private_subnet_count = 2
  azs                  = ["us-east-1a", "us-east-1b"]
}
