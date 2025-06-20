provider "aws" {
  region = var.region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.27"
  subnets         = var.subnets
  vpc_id          = var.vpc_id
  enable_irsa     = true
  manage_aws_auth = true
  ...
}

output "cluster_name" {
  value = module.eks.cluster_name
}