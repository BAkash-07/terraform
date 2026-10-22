data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "learn" {
  bucket = "tf-learn-dev-${data.aws_caller_identity.current.account_id}"
}
