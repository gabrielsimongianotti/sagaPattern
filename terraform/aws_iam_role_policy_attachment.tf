resource "aws_iam_role_policy_attachment" "lambda_fn_policy_logs" {
  role       = aws_iam_role.lambda_fn_role.name
  policy_arn = aws_iam_policy.lambda_fn_logging.arn
}
