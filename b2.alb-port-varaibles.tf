variable "allowed_alb_ingress_ports" {
  type        = list(number)
  default     = [80, 443]
  description = "List of allowed ingress ports for the security group"

}

variable "allowed_alb_cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "List of allowed CIDR blocks for ingress rules"

}