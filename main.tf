# Create single VSI in dal09. Hourly billed with private network connection only. 

resource "ibm_compute_vm_instance" "vm1" {
  hostname             = "vm1"
  domain               = "gft.ibmcloud"
  os_reference_code    = "CENTOS_7_64"
  datacenter           = "sao01"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = true
  flavor_key_name      = "C1_1X1X25"
  //disks                = [25]
  local_disk           = false
  tags                 = ["schematics"]
}