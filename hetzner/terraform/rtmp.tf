resource "hcloud_server" "bootstrap" {
  name        = "bootstrap"
  image       = "ubuntu-20.04"
  server_type = "cx11"
  location    = "nbg1"
  ssh_keys = [
    hcloud_ssh_key.default.id,
  ]
}

resource "local_file" "ansible_hosts" {
  content  = "${hcloud_server.bootstrap.ipv4_address} ansible_user=root ansible_ssh_private_key_file=../hetzner.key\n"
  filename = "../ansible/hosts"
}

output "bootstrap" {
  value = {
    ipv4_address = hcloud_server.bootstrap.ipv4_address
  }
}
