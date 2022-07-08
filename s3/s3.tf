
resource "aws_s3_bucket" "hysrosat" {
  bucket = var.bucket_name
  object_lock_enabled = true
}

resource "aws_s3_bucket_object_lock_configuration" "hysrosat" {
  bucket = aws_s3_bucket.hysrosat.bucket

  rule {
    default_retention {
      mode = var.Mode
      years = var.Years
    }
  }
}

resource "aws_s3_bucket_public_access_block" "hysrosat" {
  bucket = aws_s3_bucket.hysrosat.id

  block_public_acls = true
  block_public_policy = true
  restrict_public_buckets = true
  ignore_public_acls    =  true 
}

resource "aws_s3_bucket_acl" "hydtrosat" {
  bucket = aws_s3_bucket.hysrosat.id
  acl    = "private"
}