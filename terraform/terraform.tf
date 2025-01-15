terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.81.0"
    }
  }

  backend "s3" {
    bucket = "terraform-labs-eks"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
