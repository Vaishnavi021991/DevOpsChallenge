output "website_bucket_name" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.devops_bucket.id
}

output "website_bucket_arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.devops_bucket.arn
}

output "website_endpoint" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.devops_bucket.website_endpoint
}