output "bucket_id" {
  description = "The name (ID) of the created S3 bucket"
  value = aws_s3_bucket.main.id
}

output "bucket_arn" {
  description = "The ARN of the created S3 bucket"
  value = aws_s3_bucket.main.arn
}

output "bucket_region" {
  description = "The AWS region where the S3 bucket is created"
  value = aws_s3_bucket.main.region
}

output "versioning_status" {
  description = "Whether versioning is enabled or suspended"
  value = aws_s3_bucket_versioning.main.versioning_configuration[0].status
}