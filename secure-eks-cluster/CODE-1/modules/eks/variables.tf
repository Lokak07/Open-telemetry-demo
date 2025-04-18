variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "node_instance_type" {
  description = "The EC2 instance type for the worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "The desired number of worker nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "The minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "The subnet IDs where the EKS cluster will be deployed"
  type        = list(string)
}

variable "cluster_role_arn" {
  description = "The IAM role ARN for the EKS cluster"
  type        = string
}

variable "node_role_arn" {
  description = "The IAM role ARN for the EKS worker nodes"
  type        = string
}

