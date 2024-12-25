# variables.tf
variable "aws_region" {
  description = "AWS region for resources"
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_public_cidr_1" {
  description = "CIDR block for Public Subnet 1"
  default     = "10.0.1.0/24"
}

variable "subnet_public_cidr_2" {
  description = "CIDR block for Public Subnet 2"
  default     = "10.0.2.0/24"
}

variable "subnet_private_cidr_1" {
  description = "CIDR block for Private Subnet 1"
  default     = "10.0.3.0/24"
}

variable "subnet_private_cidr_2" {
  description = "CIDR block for Private Subnet 2"
  default     = "10.0.4.0/24"
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  default     = "my-eks-cluster"
}

variable "instance_type" {
  description = "EC2 instance type for EKS nodes"
  default     = "m6a.large"
}

variable "node_count" {
  description = "Number of EKS nodes"
  default     = 2
}
