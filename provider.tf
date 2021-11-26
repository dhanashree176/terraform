terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.66.0"
    }
    
  }
  
  backend "s3" {
      bucket = "pocworkspace"
      key = "poc.tfstate"
      region = "us-east-2"
 } 
}

provider "aws" {
  region = "us-east-2"
}