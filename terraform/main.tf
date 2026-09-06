resource "oci_core_vcn" "main" {

  compartment_id = var.compartment_ocid

  cidr_block = "10.0.0.0/16"

  display_name = "terraform-vcn"

  dns_label = "terraformvcn"
}