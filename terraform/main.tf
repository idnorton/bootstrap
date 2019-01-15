resource "scaleway_server" "bootstrap" {
  name  = "bootstrap"
  image = "c564be4f-2dac-4b1b-a239-3f3a441700ed"
  type  = "START1-XS"
  state = "running"
  dynamic_ip_required = true
}
