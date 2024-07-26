provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "kajal-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "kajal-date-dblocks"
    encrypt        = true
  }
}
