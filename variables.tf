variable "aws_region" {
  description = "aws region to deploy (only aws region with AWS SES service deployed)"
  type        = string
}

variable "function_timeout" {
  description = "The amount of time your Lambda Functions has to run in seconds."
  default     = 300
  type        = number
}

variable "tags" {
  description = "The tags of all resources created"
  type        = map
  default     = {}
}

variable "prefix_resource" {
  description = "The prefix used for all created resources"
  default     = ""
  type        = string
}

variable "teams_webhook_url" {
  description = "The URL of webhook Microsoft Teams channel"
  type        = string
}

variable "teams_image_url" {
  description = "The URL of image in Microsoft Teams notification"
  default     = "https://cdn2.iconfinder.com/data/icons/amazon-aws-stencils/100/Compute__Networking_copy_Amazon_VPC_Internet_Gateway-512.png"
  type        = string
}

variable "cloudwatch_log_retention" {
  description = "The cloudwatch log retention ( default 7 days )."
  default     = 7
  type        = number
}
