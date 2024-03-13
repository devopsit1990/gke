provider "google" {
  credentials = "${file("./.json")}"
  project     = "kubernetes-411307"
  region      = "us-central1"
}
