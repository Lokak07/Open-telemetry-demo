region               = "us-east-1"
vpc_cidr             = "10.0.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnet_cidrs  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
cluster_name         = "Opentelemetry-demo"
cluster_version      = "1.30"

node_groups = {
  "node_group_name" = {
    instance_types = ["t3.medium"]
    capacity_type  = "SPOT"
    key_name       = "ios"

    scaling_config = {
      desired_size = 2
      max_size     = 3
      min_size     = 1
    }
  }
}

