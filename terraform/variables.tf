variable "bucket_name" {
  type = string
  default = "jaz-cfstatic-1606-bkt"    #Set your bucket name here that you want to create
}

variable "allowed_methods" {
  type    = list(string)
  default = ["GET", "HEAD"]
}

variable "cached_methods" {
  type    = list(string)
  default = ["GET", "HEAD"]
}

variable "viewer_protocol_policy" {
  type    = string
  default = "allow-all"
}

