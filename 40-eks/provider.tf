terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version =  "5.58.0" # "5.57.0"
    }
  }
  backend "s3" {
    bucket = "mani-remote-state"
    key    = "expense-dev-eks"
    region = "us-east-1"
    dynamodb_table = "remote-state-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}