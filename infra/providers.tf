# terraform version
# aws plugins
# random plugins
# template plugins

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}

# Using S3 backend
terraform {
  backend "s3" {
    bucket  = "456-devops-bootcamp-state"
    key     = "2-tier-flask/dev-tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
