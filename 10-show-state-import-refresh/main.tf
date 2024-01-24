terraform {
    required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }

  backend "s3" {
    bucket = "guilherme-remote-state"
    key = "commands/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner = "guilherme"
      managed-by = "terraform" 
    }
  }
}