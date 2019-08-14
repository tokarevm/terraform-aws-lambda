variable "runtime" {
  description = "The runtime environment for the Lambda function"
  type        = "string"
}

variable "source_path" {
  description = "The source file or directory containing your Lambda source code"
  type        = "string"
}

variable "build_command" {
  description = "The command that creates the Lambda package zip file"
  type        = "string"
  default     = "python build.py '$filename' '$runtime' '$source'"
}

variable "build_paths" {
  description = "The files or directories used by the build command, to trigger new Lambda package builds whenever build scripts change"
  type        = "list"
  default     = ["build.py"]
}

variable "tags" {
  description = "A mapping of tags"
  type        = "map"
  default     = {}
}

variable "s3_bucket" {
  type = "string"
}
variable "s3_key" {
  type = "string"
}