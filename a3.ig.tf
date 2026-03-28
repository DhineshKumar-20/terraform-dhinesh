resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.dkl_vpc.id

  tags = {
    Name = "dhinesh_ig"
  }
}