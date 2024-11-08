##created by - Prasanth
##TF code for iam role and iam policy with attachment

resource "aws_iam_role" "iam_create_role" {
    name               = "${var.rolename}"
    description        = "${var.description}"
    assume_role_policy = "${var.trust_policy}"
}

resource "aws_iam_instance_profile" "instance_profile" {
    name = "${var.instance_profile}"
    role = "${aws_iam_role.iam_create_role.name}"
}

resource "aws_iam_policy" "role_policy" {
    name  	= "${var.policy_name}"
    description = "${var.policy_description}"
    path   	= "${var.path}"
    policy 	= "${var.policy}"
}

resource "aws_iam_policy_attachment" "attach_role_policy" {
    name         = "${var.policy_name}"
    roles      	 = ["${aws_iam_role.iam_create_role.name}"]
    policy_arn	 = "${aws_iam_policy.role_policy.arn}"
}

