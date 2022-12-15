provider "aws" {
  region  = var.AWS_REGION
  profile = var.AWS_PROFILE
}

terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">=1.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
  }

  required_version = "~>1.3.0"
}

module "vpc" {
  source = "./modules"
}

module "eks" {
  source = "./modules"
}

