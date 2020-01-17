provider "aws" {
  region = var.aws_region
}

terraform {
  required_version  = ">= 0.12.13"
  backend "s3" {}
}

module "tbdp_infra_secrets" {
  source        = "./modules/secrets"
  environment   = "${var.environment}"
  aws_region    = "${var.aws_region}"
  default_tags  = "${var.default_tags}"
}

# module "tbdp_infra_vpc" {
#   source        = "./modules/network"
#   vpc_cidr      = "${var.vpc_cidr}"
#   vpc_name      = "${var.vpc_name}"
#   environment   = "${var.environment}"
#   aws_region    = "${var.aws_region}"
#   default_tags  = "${var.default_tags}"
# }

# module "tbdp_infra_sg" {
#   source        = "./modules/security"
#   vpc_id        = "${var.vpc_id}"
#   vpc_cidr      = "${var.vpc_cidr}"
#   environment   = "${var.environment}"
#   aws_region    = "${var.aws_region}"
#   default_tags  = "${var.default_tags}"
# }

