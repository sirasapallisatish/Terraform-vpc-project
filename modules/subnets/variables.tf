variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "public_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "List of Availability Zones"
  type        = list(string)
}
