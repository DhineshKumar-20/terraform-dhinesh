/*resource "aws_lb_target_group_attachment" "web" {
  for_each = aws_instance.ec2_instance
  target_group_arn = aws_lb_target_group.app_tg.arn
  target_id        = each.value.id
  port = 80
}*/