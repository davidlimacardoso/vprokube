provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      terraform_managed = "true"
      Project           = "DevOps"
      env               = "dev"
    }
  }
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = var.clusterName
}

