variable "bucket_name" {
    type = string
}

variable "allowed_methods" {
    type = list(string)
}

variable "cached_methods" {
    type = list(string)
}

variable "viewer_protocol_policy" {
    type = string
}

