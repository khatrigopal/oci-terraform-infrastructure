output "vcn_id" {
  description = "OCID of the VCN"

  value = oci_core_vcn.main.id
}

output "vcn_name" {
  description = "Name of the VCN"

  value = oci_core_vcn.main.display_name
}