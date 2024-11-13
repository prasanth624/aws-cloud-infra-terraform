variable "default_tags" {
  description = "Default tags to apply to all resources"
  type        = map(string)
}
variable "aws_region" {}
variable "vpc_id" {}
variable "sg_name" {}
