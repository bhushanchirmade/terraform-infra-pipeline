

resource "aws_security_group" "allow_tls" {
  name          = "${var.aws_region}_${var.environment}_allow_tls"
  description   = "Allow TLS inbound traffic for environment ${var.environment} in region ${var.aws_region}"
  vpc_id        = "${var.vpc_id}"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr}"]
  }
  
  tags          = "${var.default_tags}"
}
