resource "aws_vpc" "dkl_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "dhinesh-vpc"
  }
}