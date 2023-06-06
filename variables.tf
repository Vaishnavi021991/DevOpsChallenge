variable "region" {
  type        = string
  description = "AWS Region identifier"
}

variable "bucket_name" {
  type        = string
  description = "Name of the bucket name"
}

variable "common_tags" {
  description = "Common tags for all the components"
}