resource "aws_s3_bucket_object" "this" {
  depends_on = ["null_resource.archive"]
  bucket     = "${var.s3_bucket}"
  key        = "${var.s3_key}"
  source     = "${lookup(data.external.built.result, "filename")}"
  tags       = "${var.tags}"
}