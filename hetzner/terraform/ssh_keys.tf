resource "tls_private_key" "default" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

resource "local_file" "key" {
  sensitive_content = tls_private_key.default.private_key_pem
  filename          = "../hetzner.key"
  file_permission   = "0400"
}

# Create a new SSH key
resource "hcloud_ssh_key" "default" {
  name       = "Default key"
  public_key = tls_private_key.default.public_key_openssh
}

