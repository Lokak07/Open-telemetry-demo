variable "iam_role_name" {
  description = "The name of the IAM role to create"
  type        = string
}

variable "iam_policy_arn" {
  description = "The ARN of the IAM policy to attach to the role"
  type        = string
}

variable "assume_role_policy" {
  description = "The assume role policy document for the IAM role"
  type        = string
}

variable "eks_role_name" {
  description = "The name of the IAM role for the EKS cluster"
  type        = string 
}