variable "aws_region" {
  default = "us-west-2"
}

variable "alert_email" {
  description = "Email for security alert notifications"
  type        = string
  default     = "vanessajenella@gmail.com"
}
