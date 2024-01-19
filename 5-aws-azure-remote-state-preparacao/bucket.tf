resource "aws_s3_bucket" "bucket" {
  bucket = "guilherme-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}