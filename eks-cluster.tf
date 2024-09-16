module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.24.0"
  
  cluster_name = "myapp-eks-cluster"
  cluster_version = "1.27"
  cluster_endpoint_public_access = true

  subnet_ids = module.myapp-vpc.private_subnets

  tags = {
    environment = "development"
    application = "myapp"
  }

  vpc_id = module.myapp-vpc.vpc_id
  eks_managed_node_groups = {
    dev = {
      ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.small"]

      min_size     = 1
      max_size     = 3
      desired_size = 3
    }
  }
}