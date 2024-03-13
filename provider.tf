provider "google" {
  credentials = "${file("/home/mcarohit421/terraform/kubernetes-411307-78665b4908eb.json")}"
  project     = "kubernetes-411307"
  region      = "us-central1"
}
