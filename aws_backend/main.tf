terraform {
  // run this block of backend code after terraform applying the rest oc the code below
  # backend "s3" {
  #   bucket         = "devops-directive-tf-state"
  #   key            = "tf-infra/terraform/tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "terraform-state-locking"
  #   encrypt        = true
  # }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform-state" {
  bucket        = "devops-directive-tf-state-tzl"
  force_destroy = true
}

resource "aws_dynamodb_table" "terraform-locks" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
