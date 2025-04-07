<<<<<<< HEAD
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "local" {}
}

=======
>>>>>>> 74c8d2e (b)
provider "aws" {
  region = var.aws_region
}

<<<<<<< HEAD
module "networking" {
  source = "./networking" 

  aws_region           = var.aws_region
  env                  = var.env
  vpc_cidr             = var.vpc_cidr
  public_subnet_count  = 2
  private_subnet_count = 2
  azs                  = ["us-east-1a", "us-east-1b"]
=======
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  environment = var.environment
}


module "subnets" {
  source      = "./modules/subnets"
  vpc_id      = module.vpc.vpc_id
  public_cidrs  = var.public_cidrs
  private_cidrs = var.private_cidrs
  azs         = var.azs
}

module "networking" {
  source         = "./modules/networking"
  vpc_id         = module.vpc.vpc_id
  public_subnets = module.subnets.public_subnets
  private_subnets = module.subnets.private_subnets
>>>>>>> 74c8d2e (b)
}
