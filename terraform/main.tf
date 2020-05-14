resource "scaleway_server" "bootstrap" {
  name  = "bootstrap"
  image = "d4067cdc-dc9d-4810-8a26-0dae51d7df42" // Ubuntu 18.04 Bionic Paris1 x86_64
  type  = "START1-S"
  state = "running"
  dynamic_ip_required = true
}

//  image = "c564be4f-2dac-4b1b-a239-3f3a441700ed" // Ubuntu 16.04 Xenial Paris1 x86_64
//  This image is 25GB version
