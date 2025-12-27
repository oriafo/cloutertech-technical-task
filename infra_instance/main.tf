terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  # S3 backend for remote state
  backend "s3" {
    bucket         = "cloutertech-state-dev"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    profile        = "ruth-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "infrastructure_instance" {
  source = "../infra_module"

  # input variables
  aws_region                  = "us-east-1"
  instance_type               = "t2.micro"
  custom_vpc_cidr_block       = "10.0.0.0/16"
  public_subnet_cidr_block    = "10.0.1.0/24"
  private_subnet_cidr_block   = "10.0.2.0/24"
  public_rt_cidr_block        = "0.0.0.0/0"
  private_rt_cidr_block       = "0.0.0.0/0"
}