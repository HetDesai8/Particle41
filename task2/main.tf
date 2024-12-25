# main.tf

# Provider configuration for AWS
provider "aws" {
  region = var.aws_region  # Variable for region, can be set in terraform.tfvars
}

# Terraform version and provider version requirements
terraform {
  required_version = ">= 1.0.0"  # Ensures Terraform version is 1.0 or greater
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"  # Source of the AWS provider
      version = "~> 4.0"         # Use AWS provider version 4.x
    }
  }
}