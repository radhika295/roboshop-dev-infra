terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

    backend "s3" {
        bucket = "remote-terraform-86"
        key    = "remote-state-local-demo-bastion"
        region = "us-east-1"
        use_lockfile = true
        encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}