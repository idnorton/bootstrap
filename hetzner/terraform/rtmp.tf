resource "hcloud_server" "rtmp" {
  name        = "rtmp"
  image       = "ubuntu-20.04"
  server_type = "cx11"
  location    = "nbg1"
  ssh_keys = [
    hcloud_ssh_key.default.id,
  ]
}

output "rtmp" {
  value = {
    ipv4_address = hcloud_server.rtmp.ipv4_address
  }
}
