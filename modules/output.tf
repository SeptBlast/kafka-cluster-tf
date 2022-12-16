output "eks_cluster_name" {
  value = module.eks.cluster_id
}

output "eks_cluster_arn" {
  value = module.eks.cluster_arn
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
