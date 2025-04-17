variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "region" {
  description = "The AWS region where the EKS cluster will be deployed"
  type        = string
}

variable "node_instance_type" {
  description = "The instance type for the EKS nodes"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity of the EKS node group"
  type        = number
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "The availability zones for the EKS cluster"
  type        = list(string)
}

variable "iam_role_name" {
  description = "The IAM role name for the EKS cluster"
  type        = string
}

variable "policy_arn" {
  description = "The ARN of the policy to attach to the IAM role"
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string  
  
}

variable "cluster_role_arn" {} 
variable "node_role_arn" {}
variable "eks_role_name" {}
variable "eks_policy_name" {}
