module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  for_each = [var.s3_names]
  bucket   = "${var.name_prefix}-element(var.s3_names, index)"
  acl      = "private"

  versioning = {
    enabled = true
  }

}
