locals {
  fe_private_key_filename = "${var.frontend_prefix}-ssh-key-v2.pem"
  be_private_key_filename = "${var.backend_prefix}-ssh-key-v2.pem"
}


resource "tls_private_key" "be_keypair" {
  algorithm = "ED25519"
}

resource "aws_key_pair" "be_keypair" {
  key_name   = local.be_private_key_filename
  public_key = tls_private_key.be_keypair.public_key_openssh
}

