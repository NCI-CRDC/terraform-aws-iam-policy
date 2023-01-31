resource "aws_iam_policy" "this" {
  name        = "${local.iam_prefix}-${local.stack}-${var.policy_suffix}"
  description = var.description
  path        = var.path
  policy      = var.policy
}

resource "aws_iam_role_policy_attachment" "this" {
  count = var.role_name != null ? 1 : 0

  role       = var.role_name
  policy_arn = var.role != null ? aws_iam_policy.this.arn : null
}