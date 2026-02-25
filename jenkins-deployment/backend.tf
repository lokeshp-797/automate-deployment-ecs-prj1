terraform {
  backend "s3" {
    bucket = "prj1-dev-bkt"
    region = "us-east-1"
    key = "terraform/dev/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt = true
    use_lockfile = true
  }
  required_version = ">= 0.13.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=2.7.0"
    }
  }
}