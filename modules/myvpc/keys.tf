# Generate new private key 
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
}
# Generate a key-pair with above key
resource "aws_key_pair" "deployer" {
  key_name   = "mykey"
  public_key = tls_private_key.my_key.public_key_openssh
}
# Saving Key Pair
resource "local_file" "private_key" {
  content         = tls_private_key.my_key.private_key_pem
  filename        = "key.pem"
  file_permission = "0400"
}