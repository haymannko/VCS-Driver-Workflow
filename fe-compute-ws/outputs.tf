
output "fe-keypair" {
  value = aws_key_pair.fe_keypair.public_key
}

output "be-keypair" {
  value = aws_key_pair.be_keypair.public_key
}
