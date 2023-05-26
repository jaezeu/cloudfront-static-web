resource "aws_s3_bucket" "static_web" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.static_web.id
  policy = data.aws_iam_policy_document.default.json
}
