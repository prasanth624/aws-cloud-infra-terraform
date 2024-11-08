output "role_id" {
  value = "${aws_iam_role.iam_create_role.id}"
}

output "role_name" {
  value = "${aws_iam_role.iam_create_role.name}"
}

output "role_arn" {
  value = "${aws_iam_role.iam_create_role.arn}"
}
