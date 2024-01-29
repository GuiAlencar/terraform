terraform {
    required_version = ">=1.3.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }

  backend "s3" {
    bucket = "guilherme-remote-state"
    key    = "aws-vm-modulos-locais/terraform.tfstate"
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

module "network" {
  source = "./network"

  cidr_vpc = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = var.environment
}
