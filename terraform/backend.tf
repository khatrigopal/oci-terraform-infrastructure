terraform {
  backend "oci" {
    bucket    = "terraform-state"
    namespace = "bmz9babfa8xa"
    key = "terraform.tfstate"
  }
}
