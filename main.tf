resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name

  tags = merge(var.additionalTags,{
    Name = "S3-Bucket"
  })

}

resource "aws_s3_bucket_versioning" "main" {
   
   bucket = aws_s3_bucket.main.id

    versioning_configuration {
      status = var.versioning ? "Enabled" : "Suspended"
    }
}

