# terraform-aws-s3-basic

A simple and reusable Terraform module to create an AWS S3 bucket with optional versioning and custom tagging support.

---

## Features

- Create an AWS S3 bucket
- Optional object versioning (enable/disable)
- Mergeable custom tags
- Outputs useful info like bucket ARN, region, and versioning status
- Designed to be reusable and Terraform Registry-ready

---

## Usage

```hcl
provider "aws" {
  region = "ap-south-1"
}

module "s3_bucket" {
  source  = "ivinay1/s3-basic/aws"
  version = "1.0.0"

  bucket_name    = "my-terraform-s3-bucket"
  versioning     = true
  additionalTags = {
    Project = "Terraform"
    Owner   = "ivinay1"
  }
}
```
