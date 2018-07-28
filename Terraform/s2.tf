
variable "S3-Name" {
  description = "Please Name the Bucket you want to create"
}

resource "aws_s3_bucket" "b1" {
  bucket = "${var.S3-Name}"
  acl    = "private"

  tags {
    Name        = "${var.S3-Name}"
    Environment = "Dev"
  }
}
