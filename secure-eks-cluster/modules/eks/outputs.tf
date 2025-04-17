output "cluster_endpoint" {
  value = aws_eks_cluster.my_cluster.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.my_cluster.name
}

output "cluster_arn" {
  value = aws_eks_cluster.my_cluster.arn
}

output "node_group_role_arn" {
  value = aws_iam_role.node_group_role.arn
}