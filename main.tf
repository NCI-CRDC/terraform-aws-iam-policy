resource "aws_iam_policy" "this" {
  name        = "${local.iam_prefix}-${local.stack}-${var.resource_name_suffix}"
  description = var.description
  path        = var.path
  policy      = var.policy
}
