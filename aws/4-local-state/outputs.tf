output "bucket_id" {
  description = "Id da bucket criada na aws"
  value = aws_s3_bucket.s3_bucket.id
}

output "bucket_arn" {
  description = "ARN da bucket criada na aws"
  value = aws_s3_bucket.s3_bucket.arn
}