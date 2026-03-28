output "vpc_id" {
  value       = aws_vpc.dkl_vpc.id
  description = "vpc id of the created vpc"

}

output "subnet_ids" {
  value       = values(aws_subnet.dkl_subnet)[*].id
  description = "subnet ids of the created subnets"

}