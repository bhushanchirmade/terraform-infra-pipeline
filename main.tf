provider "aws" {
  region = var.aws_region
}

terraform {
  required_version  = ">= 0.12.13"
  backend "s3" {}
}

module "layer_infra_secrets" {
  source        = "./modules/secrets"
  environment   = "${var.environment}"
  aws_region    = "${var.aws_region}"
  default_tags  = "${var.default_tags}"
}


