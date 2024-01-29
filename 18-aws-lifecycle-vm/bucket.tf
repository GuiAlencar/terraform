resource "aws_s3_bucket" "bucket-imagem" {
  bucket = "guilherme-lifecycle"

  lifecycle {
    create_before_destroy = true
    ignore_changes = [ 
      tags
    ]
  }

  tags = {
    test = "vscode"
  }
}