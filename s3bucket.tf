provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "hanna.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "hanna-bucket"                        #Use a globally unique name
  force_destroy = true 
}