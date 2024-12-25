# terraform.tfvars
aws_region        = "us-west-2"
vpc_cidr_block    = "10.0.0.0/16"
subnet_public_cidr_1 = "10.0.1.0/24"
subnet_public_cidr_2 = "10.0.2.0/24"
subnet_private_cidr_1 = "10.0.3.0/24"
subnet_private_cidr_2 = "10.0.4.0/24"
eks_cluster_name  = "my-eks-cluster"
instance_type     = "m6a.large"
node_count        = 2
