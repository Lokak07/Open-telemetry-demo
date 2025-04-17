output "iam_role_arn" {
  value = aws_iam_role.my_role.arn
}

output "iam_policy_arn" {
  value = aws_iam_policy.my_policy.arn
}