provider "aws" {
  region = "ap-south-1"
}

module "s3_bucket" {
  source = "../../"  # this will be "your-username/s3-basic/aws" when published

  bucket_name     = "my-example-s3-bucket-123456"
  versioning      = true
  additionalTags  = {
    Project = "TerraformS3"
    Owner   = "XYZ"
  }
}
