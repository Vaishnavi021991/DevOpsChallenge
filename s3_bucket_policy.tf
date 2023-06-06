resource "aws_s3_bucket_public_access_block" "devops_bucket_access" {
  bucket = aws_s3_bucket.devops_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  depends_on = [aws_s3_bucket_public_access_block.devops_bucket_access]
  bucket     = aws_s3_bucket.devops_bucket.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:Get*",
        "s3:List*"
      ],
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.devops_bucket.id}",
        "arn:aws:s3:::${aws_s3_bucket.devops_bucket.id}/*"
      ]
    }
  ]
}
EOF

}