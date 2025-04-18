variable "eks_role_name" {
  description = "The name of the IAM role for the EKS cluster"
  type        = string
}

variable "eks_policy_name" {
  description = "The name of the IAM policy for the EKS cluster"
  type        = string
}
