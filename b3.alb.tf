resource "aws_alb" "app_lb" {
  name               = "dhinesh-alb"
  load_balancer_type = "application"
  #with this lb we need to add security group and subnet
  security_groups = [aws_security_group.alb_sg.id]      #this is the security
  subnets         = values(aws_subnet.dkl_subnet)[*].id #this is the subnet
  tags = {
    Name = "dhinesh-alb"
  }
}