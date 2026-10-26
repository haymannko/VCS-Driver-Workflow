locals {
  pod_id = lower("${var.pod_name}-${random_string.suffix.result}")
  rds_creds = {
    username = var.rds_username
    password = var.rds_password
  }
}

resource "random_string" "suffix" {
  length  = 10   # from 8
  special = true # from false
}