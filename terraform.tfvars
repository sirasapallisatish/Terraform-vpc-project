<<<<<<< HEAD
env              = "prod"
aws_region       = "us-east-1"
vpc_cidr         = "10.0.0.0/16"
public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
=======
aws_region = "us-east-1"
environment = "dev,prod,stage"
vpc_cidr = "10.0.0.0/24"
azs = ["us-east-1a", "us-east-1b"]
public_cidrs = ["10.0.0.0/26", "10.0.0.64/26"]
private_cidrs = ["10.0.0.128/26", "10.0.0.192/26"]
>>>>>>> 74c8d2e (b)
