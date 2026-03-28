resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_alb.app_lb.arn #this listener will be attached to the alb
  port              = 80                 #listener will listen on port 80
  protocol          = "HTTP"             #listener will use HTTP protocol
  #the default action is to forward the traffic to the target group
  default_action {
    target_group_arn = aws_lb_target_group.app_tg.arn
    type             = "forward"
  }
}