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
#access keys should be added on terraform cloud
provider "aws" {
  region = "us-east-1"
}