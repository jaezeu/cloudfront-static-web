terraform {
  backend "s3" {
    bucket = "sctp-ce6-tfstate"
    key = "jaz-cloudfront-s3.tfstate"
    region = "ap-southeast-1"
  }
}