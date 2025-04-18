resource "aws_iam_role" "eks_role" {
  name               = var.eks_role_name
  assume_role_policy = data.aws_iam_policy_document.eks_assume_role_policy.json
}

resource "aws_iam_policy" "eks_policy" {
  name        = var.eks_policy_name
  description = "EKS policy for managing cluster resources"
  policy      = data.aws_iam_policy_document.eks_policy.json
}

resource "aws_iam_role_policy_attachment" "attach_eks_policy" {
  policy_arn = aws_iam_policy.eks_policy.arn
  role       = aws_iam_role.eks_role.name
}
