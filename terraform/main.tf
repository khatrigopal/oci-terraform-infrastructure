# -----------------------------------
# VCN
# -----------------------------------



resource "oci_core_vcn" "main" {

  compartment_id = var.compartment_ocid

  cidr_block = "10.0.0.0/16"

  display_name = "terraform-vcn"

  dns_label = "terraformvcn"
}


# -----------------------------------
# Public Subnet
# -----------------------------------

resource "oci_core_subnet" "public_subnet" {

  compartment_id = var.compartment_ocid

  vcn_id = oci_core_vcn.main.id

  cidr_block = "10.0.1.0/24"

  display_name = "public-subnet"

  dns_label = "publicsubnet"

  prohibit_public_ip_on_vnic = false
}


# -----------------------------------
# Private Subnet
# -----------------------------------

resource "oci_core_subnet" "private_subnet" {

  compartment_id = var.compartment_ocid

  vcn_id = oci_core_vcn.main.id

  cidr_block = "10.0.2.0/24"

  display_name = "private-subnet"

  dns_label = "privatesubnet"

  prohibit_public_ip_on_vnic = true
}
