terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "personal_aws"
    workspaces {
      name = "infra_terraform"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}