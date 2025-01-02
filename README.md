# SimpleTimeService & EKS Infrastructure Deployment

## Overview

This repository contains the source code for the **SimpleTimeService** microservice and the infrastructure code to deploy a **Kubernetes cluster (EKS) on AWS** using **Terraform**.

### Task 1: SimpleTimeService Microservice

The **SimpleTimeService** is a microservice that provides the current timestamp and the IP address of the visitor. It is designed to be deployed in a Docker container and managed by Kubernetes.

### Task 2: AWS Infrastructure Setup with Terraform

The second task involves creating an **EKS cluster** in **AWS** using **Terraform**, along with a **VPC**, **subnets**, and **nodes** configured according to the specifications provided.

---

## Prerequisites

Before deploying the application or infrastructure, make sure you have the following tools installed:

### 1. **Docker**
- **Installation**: [Docker Installation](https://docs.docker.com/get-docker/)
- **Usage**: Docker is required to build and run the SimpleTimeService as a container.

### 2. **Kubernetes (kubectl)**
- **Installation**: [Install kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- **Usage**: kubectl is required to interact with the Kubernetes cluster to deploy the microservice.

### 3. **AWS CLI**
- **Installation**: [AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- **Usage**: AWS CLI is required to configure your AWS credentials and interact with the AWS infrastructure.

### 4. **Terraform**
- **Installation**: [Terraform Installation](https://www.terraform.io/downloads.html)
- **Usage**: Terraform is required to create and manage the infrastructure on AWS, including the VPC, EKS cluster, and associated resources.

---

## Steps to deploy the application

```bash
Task 1
git clone https://github.com/yourusername/Particle41.git
cd Particle41
cd Task1
docker build -t simple-time-service .
kubectl apply -f microservice.yml

Task 2
git clone https://github.com/yourusername/Particle41.git
cd Particle41
cd Task2
Terraform plan
Terraform apply


