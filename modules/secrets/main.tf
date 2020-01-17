
resource "aws_secretsmanager_secret" "secrets" {
  name = "${var.aws_region}-${var.environment}-secrets"
}
