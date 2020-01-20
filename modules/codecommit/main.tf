resource "aws_codecommit_repository" "codecommit" {
  repository_name = "${var.aws_region}-${var.environment}-TestRepo"
  tags = var.default_tags
}
