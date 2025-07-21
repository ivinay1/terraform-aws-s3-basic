variable "bucket_name" {
  description = "Enter the Bucket Name"
  type = string
}

variable "additionalTags" {
  description = "Enter the tag"
  type = map(string)
}

variable "versioning" {
  description = "Enter the versioning status"
  type = bool
  default = true
}