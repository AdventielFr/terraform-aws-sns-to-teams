output "lambda_arn" {
  value       = aws_lambda_function.this.arn
  description = "The Lambda ARN who send SNS topic message to Microsoft Teams"
}

output "sns_arn" {
  value       = local.sns_arn
  description = "The SNS ARN who send SNS topic message to Microsoft Teams"
}

output "role_arn" {
  value       = aws_iam_role.this.arn
  description = "The IAM Role ARN used by Lambda who send SNS topic message to Microsoft Teams"
}