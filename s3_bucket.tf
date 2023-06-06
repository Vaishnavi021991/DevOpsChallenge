resource "aws_s3_bucket" "devops_bucket" {
  bucket = var.bucket_name

  tags = var.common_tags
}

resource "aws_s3_bucket_website_configuration" "devops_website" {
  bucket = aws_s3_bucket.devops_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_object" "file_upload" {
  for_each     = fileset("./documents/", "**")
  bucket       = aws_s3_bucket.devops_bucket.id
  key          = each.value
  source       = "./documents/${each.value}"
  content_type = "text/html"
}