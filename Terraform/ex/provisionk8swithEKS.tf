provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "example-cluster"
  cluster_version = "1.24"
  subnets         = ["subnet-0123456789abcdef0", "subnet-abcdef0123456789"]
  vpc_id          = "vpc-0123456789abcdef0"

  node_groups = {
    example = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }
}
