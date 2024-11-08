variable "policy_path" {
  description = "Path to the policy template file"
  default = "."
}

data "template_file" "first_policy" {
    template = "${file("${var.policy_path}/first_policy.tpl")}"
    vars = {
	}
}

data "template_file" "first_trust_policy" {
    template = "${file("${var.policy_path}/first_trust_policy.tpl")}"
    vars = {
   }
}

data "template_file" "second_policy" {
    template = "${file("${var.policy_path}/second_policy.tpl")}"
    vars = {
        }
}
