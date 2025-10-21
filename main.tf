provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "scto-ce11-tfstate"
    key    = "jiaqing.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "jiaqing-app-bucket"
}
