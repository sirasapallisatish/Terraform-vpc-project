output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnets"
  value       = module.subnets.public_subnets
}

output "private_subnets" {
  description = "Private subnets"
  value       = module.subnets.private_subnets
}
