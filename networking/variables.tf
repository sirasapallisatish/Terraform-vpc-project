variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "vpc_cidr" {
  type = string
}
variable "public_subnet_count" {
  type        = number
  description = "Number of public subnets"
}

variable "private_subnet_count" {
  type        = number
  description = "Number of private subnets"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}



variable "env" {
  description = "Environment name"
  type        = string
}

