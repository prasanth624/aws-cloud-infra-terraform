##created by - Prasanth

module "s3role"{
  source = "../modules/iam-role-with-policy"

  rolename = "s3-access"
  description = "Allow s3 access"
  policy_name = "s3-access-Policy"
  policy_description = "s3-access-policy"
  instance_profile ="s3-access"
  trust_policy = "${data.template_file.first_trust_policy.rendered}"
  policy = "${data.template_file.first_policy.rendered}"
}

resource "aws_iam_policy" "second_policy" {
    name        = "db_policy"
    description = "policy for db"
    path        = "/"
    policy      = "${data.template_file.second_policy.rendered}"
}

resource "aws_iam_role_policy_attachment" "attach_second_policy" {
    name         = "db-access"
    roles      	 = ["${module.s3role.role_name}"]
    policy_arn	 = "${aws_iam_policy.second_policy.arn}"
}

