variable "aws_region" {
  type        = string
}

variable "vpc_cidr" {
  type    = string
}

variable "public_subnets" {
  type    = list(string)
}

variable "env" {
  type = string
}

variable "private_subnets" {
  type    = list(string)
}
