provider "google" {
  credentials = "${file("kubernetes-411307-78665b4908eb.json")}"
  project     = "kubernetes-411307"
  region      = "us-central1"
}
