
output "fe-keypair" {
  value = aws_key_pair.fe_keypair.public_key
}

output "be-keypair" {
  value = aws_key_pair.be_keypair.public_key
}

output "be-keypair_private" {
  value = local_sensitive_file.be_private_key.filename
}

output "fe-keypair_private" {
  value = local_sensitive_file.fe_private_key.filename
}
