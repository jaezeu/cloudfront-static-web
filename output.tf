output "cf_id" {
  value = aws_cloudfront_distribution.s3_distribution.id
}

output "bucket_name" {
  value = aws_s3_bucket.static_web.id  
}
