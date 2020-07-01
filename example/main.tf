
provider "aws" {
  region = "eu-west-3"
}

module "example" {
  source                   = "../"
  aws_region               = "eu-west-3"
  cloudwatch_log_retention = 7
  teams_webhook_url =  "<https:// microsoft teams webhook url>"
  prefix_resource = "dev-sample"
  tags = {
    Environment = "dev"
  }
}

output "lambda_arn" {
  value       = module.example.lambda_arn
  description = "The lambda ARN who send message to Microsoft Teams"
}

output "sns_arn" {
  value       = module.example.sns_arn
  description = "The SNS ARN who send message to Microsoft Teams"
}

output "role_arn" {
  value       = module.example.role_arn
  description =  "The IAM Role ARN used by Lambda who send SNS topic message to Microsoft Teams"
}