# nodes.tf
resource "aws_launch_configuration" "eks_worker" {
  name          = "eks-worker-config"
  image_id      = "ami-0c55b159cbfafe1f0"  # Replace with the latest Amazon Linux 2 AMI ID
  instance_type = var.instance_type
  security_groups = [
    aws_security_group.eks_cluster_sg.id
  ]
  associate_public_ip_address = false  # Nodes in private subnets should not have public IPs
}

resource "aws_autoscaling_group" "eks_workers" {
  desired_capacity     = var.node_count
  max_size             = var.node_count
  min_size             = var.node_count
  vpc_zone_identifier  = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]
  launch_configuration = aws_launch_configuration.eks_worker.id
}

resource "aws_iam_role" "eks_worker" {
  name = "eks-worker-role"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Effect   = "Allow"
        Sid      = ""
      },
    ]
  })
}

resource "aws_iam_instance_profile" "eks_worker_profile" {
  name = "eks-worker-profile"
  role = aws_iam_role.eks_worker.name
}

resource "aws_iam_policy_attachment" "eks_worker_policy_attachment" {
  name       = "eks-worker-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  roles      = [aws_iam_role.eks_worker.name]
}

