output "build_result_filename" {
  description = "Full path to the source code package with requirements installed"
  value       = "${lookup(data.external.built.result, "filename")}"
}

output "s3_bucket" {
  value = "${aws_s3_bucket_object.this.id}"
}

output "s3_key" {
  value = "${aws_s3_bucket_object.this.key}"
}

output "s3_path" {
  value = "s3://${aws_s3_bucket_object.this.id}/${aws_s3_bucket_object.this.key}"
}