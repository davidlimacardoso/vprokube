variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-labs"
}

variable "vpc_id" {
  default     = "vpc-028e5bd127ffb9444"
  type        = string
  description = "VPC ID to associate with EKS Cluster"
}

variable "private_subnets" {
  default     = ["subnet-0c9478d9da82f0579", "subnet-04e972ab97a50a310"]
  type        = list(string)
  description = "Private Subnets for EKS Cluster"
}