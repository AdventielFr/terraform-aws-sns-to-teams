output "lambda_arn" {
  value       = aws_lambda_function.this.arn
  description = "The Lambda ARN who send SNS topic message to Microsoft Teams"
}

output "sns_arn" {
  value       = aws_lambda_function.this.arn
  description = "The SNS ARN who send SNS topic message to Microsoft Teams"
}