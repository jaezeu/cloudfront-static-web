variable "bucket_name" {
  type = string
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

