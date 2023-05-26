resource "aws_s3_bucket" "static_web" {
  bucket = "jazeel-test-bucket-3"
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.static_web.id
  policy = data.aws_iam_policy_document.default.json
}

data "aws_iam_policy_document" "default" {
	statement {
		actions = ["s3:GetObject"]

		resources = ["${aws_s3_bucket.static_web.arn}/*"]

		principals {
			type        = "Service"
			identifiers = ["cloudfront.amazonaws.com"]
		}
		condition {
			test     = "StringEquals"
			variable = "AWS:SourceArn"
			values   = [aws_cloudfront_distribution.s3_distribution.arn]
		}
	}
}