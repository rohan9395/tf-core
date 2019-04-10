resource "aws_s3_bucket" "default" {
  bucket = "${local.resource_identifier}-terraform-state-storage"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = "${merge(
    local.default_tags,
    map("Name", "${local.resource_identifier}-terraform-state-storage"),
  )}"
}