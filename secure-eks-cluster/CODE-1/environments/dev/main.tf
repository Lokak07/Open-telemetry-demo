

module "vpc" {
  source = "../../modules/vpc"

  cidr_block           = var.cidr_block
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  name                 = var.name
}

# IAM module

module "iam" {
  source          = "../../modules/iam"
  eks_role_name   = var.eks_role_name
  eks_policy_name = var.eks_policy_name
}

# EKS module

module "eks" {
  source = "../../modules/eks"

  cluster_name       = var.cluster_name
  cluster_role_arn   = module.iam.cluster_role_arn
  node_role_arn      = module.iam.node_role_arn
  subnet_ids         = module.vpc.private_subnet_ids
  vpc_id             = module.vpc.vpc_id
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  node_instance_type = var.node_instance_type
}
