resource "aws_iam_role" "log_forwarder" {
  name               = "${var.basename}-${var.forwarder_function_name}_${md5("${var.vpc_id}${data.aws_region.current.name}")}"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}