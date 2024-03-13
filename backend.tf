terraform {
  backend "gcs" {
    bucket  = "gcs_12"
    prefix  = "terraform/state"
  }
}
