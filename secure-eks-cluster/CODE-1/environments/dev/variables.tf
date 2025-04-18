variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# VPC Variables
variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "availability_zones" {
  description = "A list of availability zones for the VPC."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}

variable "name" {
  description = "The name prefix for VPC-related resources."
  type        = string
}

# IAM Variables
variable "eks_role_name" {
  description = "The name of the IAM role for the EKS cluster"
  type        = string
}

variable "eks_policy_name" {
  description = "The name of the IAM policy for the EKS cluster"
  type        = string
}

# EKS Variables
variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  type        = string
  default     = "t3.medium"
}
