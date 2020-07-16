provider "aws" {
  region = var.aws_region
}

terraform {
  required_version  = ">= 0.12.13"
  backend "s3" {}
}

module "codecommit" {
  source        = "./modules/codecommit"
  environment   = var.environment
  aws_region    = var.aws_region
  default_tags  = var.default_tags
}



