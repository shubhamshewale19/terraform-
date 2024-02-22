provider "aws" {
  region = "eu-north-1"
}

module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "eks-cluster"
  subnets         = ["subnet-07468bb006cd32e5a", "subnet-0f1a1a2dacc0efb2c", "subnet-07c5276f9e22bc779"]
  vpc_id          = "vpc-0207ac0d2846e90d8"
  key_name        = "shubha"
  node_groups     = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
    }
  }
}