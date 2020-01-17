
resource "aws_vpc" "vpc" {
  cidr_block  = "${var.vpc_cidr}"
  tags        = "${merge(var.default_tags, map("Name", "${var.vpc_name}",))}"
}