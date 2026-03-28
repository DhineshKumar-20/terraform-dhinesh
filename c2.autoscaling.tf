resource "aws_autoscaling_group" "web" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 2 #it should create two instances at the time of creation of autoscaling group and it can scale up to 4 instances and it will not scale down below 2 instances
  name             = "dhinesh-autoscaling-group"
  #i want that the instance should be deployed in two az 
  vpc_zone_identifier = values(aws_subnet.dkl_subnet)[*].id #this is the subnet where the autoscaling group will be created
  target_group_arns   = [aws_lb_target_group.app_tg.arn]
  health_check_type   = "ELB" #this is the health check type for the autoscaling group
  launch_template {
    id      = aws_launch_template.ec2_instance.id
    version = "$Latest"
  }
  tag {
    key                 = "Name"
    value               = "dhinesh-autoscaling-group"
    propagate_at_launch = true

  }
}